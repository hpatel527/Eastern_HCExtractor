/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataextractor;

import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.stage.FileChooser;
import derbytest.*;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Scanner;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.cell.PropertyValueFactory;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author minidude34
 */
public class FXMLDocumentController implements Initializable {
    
    @FXML
    private static Label label;
    @FXML
    private TableView<ColumnObject> payloadTable;
    @FXML
    private Button startExtract;
    @FXML
    private Button fileChooseBtn;
    @FXML
    private TextField fileNameLabel;
    
    
     private static String driverName = "org.apache.derby.jdbc.EmbeddedDriver";
     private static String clientDriverName = "org.apache.derby.jdbc.ClientDriver";
     private static String databaseConnectionName = "jdbc:derby://localhost:1527/pcc";
    static File logFile;
    public static ArrayList<Canmsginfo> canidlist;
    
    private void handleButtonAction(ActionEvent event) {
        label.setText("Hello World!");
        
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    @FXML
    private void handleButtonActionExtract(ActionEvent event) throws FileNotFoundException, SQLException{
        ArrayList<CanDisplay> canList = new ArrayList<CanDisplay>(); // list of CanIds found in log file
        canList = createCanList(event); // fill list with CANIDS
        int count = 0;
        DbPayload dbpay = new DbPayload();
        
        ObservableList<ColumnObject> colObjects = FXCollections.observableArrayList();
        
        TableColumn<ColumnObject,Integer> countColumn = new TableColumn<>("Count");
        countColumn.setMinWidth(200);
        countColumn.setCellValueFactory(new PropertyValueFactory<>("count"));
        
        TableColumn<ColumnObject,String> hexColumn = new TableColumn<>("HexCode");
        hexColumn.setMinWidth(200);
        hexColumn.setCellValueFactory(new PropertyValueFactory<>("hexCode"));
        
        
        TableColumn<ColumnObject,String> msgFMTColumn = new TableColumn<>("msgFMT");
        msgFMTColumn.setMinWidth(200);
        msgFMTColumn.setCellValueFactory(new PropertyValueFactory<>("msgFMT"));
        
        
        TableColumn<ColumnObject,String> canNameColumn = new TableColumn<>("CANName");
        canNameColumn.setMinWidth(200);
        canNameColumn.setCellValueFactory(new PropertyValueFactory<>("canName"));
        
        TableColumn<ColumnObject,String> payTypeColumn = new TableColumn<>("PayLoadTypeCode");
        payTypeColumn.setMinWidth(200);
        payTypeColumn.setCellValueFactory(new PropertyValueFactory<>("payType"));
        
        TableColumn<ColumnObject,String> idColumn = new TableColumn<>("CanID");
        idColumn.setMinWidth(200);
        idColumn.setCellValueFactory(new PropertyValueFactory<>("canID"));
        
        TableColumn<ColumnObject,String> descriptColumn = new TableColumn<>("PayloadDescription");
        descriptColumn.setMinWidth(400);
        descriptColumn.setCellValueFactory(new PropertyValueFactory<>("canDescript"));
        
        TableColumn<ColumnObject,Integer> drumColumn = new TableColumn<>("DrumInstance");
        drumColumn.setMinWidth(200);
        drumColumn.setCellValueFactory(new PropertyValueFactory<>("drumInstance"));
 
 
        for(CanDisplay c : canList)
        {
           // data.add(count,0,c.can_hex,c.cmi.pay_type_code,0,c.id,c.cmi.descript_canid,c,dbpay.convert(c));
           ColumnObject co = new ColumnObject(count,c,dbpay);
           colObjects.add(co);    
           count++;
        }
        
        payloadTable.setItems(colObjects);
        payloadTable.getColumns().addAll(countColumn,hexColumn,msgFMTColumn,canNameColumn,payTypeColumn,idColumn,descriptColumn);
        
    }
    
    @FXML
    private void handleButtonActionFile(ActionEvent event) {
        
        Node node = (Node) event.getSource();
        
         FileChooser fileChooser = new FileChooser();
         fileChooser.setTitle("Open Log file");
         logFile = fileChooser.showOpenDialog(node.getScene().getWindow());
         fileNameLabel.setText(logFile.getName());
         
    }
    
    private static ArrayList<CanDisplay> createCanList(ActionEvent event) throws FileNotFoundException, SQLException
    {
        //TODO - Read in ID's from file into a list of IDS. Poll the derby database with each ID and retrieve relevant info into Canmsginfo objects
        //Return a list of Canmsginfo objects that hold all relevant info for each CanID from log file.
       ArrayList<Canmsginfo> canidlist = new ArrayList<>(); //contains ALL possible canIDs
        ArrayList<String> canIDs = new ArrayList<String>(); //CANIDS are hex so pulling as Strings to convert later
        ArrayList<CanDisplay> candisplay = new ArrayList<>();
        Scanner fin = new Scanner(logFile);
       Connection connection = null;
        PreparedStatement pstmt = null;
        Statement stmt = null;
        int count3 = 0;
        int count4 = 0;
        DbPayload dbpay = new DbPayload();
       
       
       while(fin.hasNext())
       {
           canIDs.add(fin.nextLine().trim());
       }
        fin.close();
        
        System.out.println("List of CANIDs sorted by HEX ");
            java.util.Date date= new java.util.Date();
            System.out.format("// %s\n",new Timestamp(date.getTime()));
            
          // DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
            connection = DriverManager.getConnection(databaseConnectionName);
      System.out.println("// Seems to have made the database connection\n");
            
            stmt = connection.createStatement();
            ResultSet rs;
            
            Pcc_defines.genlist_Canid(stmt,canidlist); // generates a FULL database of canIDS and places into arraylist for search purposes
            
            System.out.println("DATABASE GENERATED");
            
            Canmsg2j can1; 
            can1 = new Canmsg2j();
            
            for(String s : canIDs)
            { 
                // byte[] pb = DatatypeConverter.parseHexBinary(s); //hex code that is used to query canDB
                int ret = can1.convert_msgtobin(s);
                long ltmp = can1.id;
                ltmp = (ltmp << 32) >>>32; //sign extension fix
                Long Ltmp = ltmp;
                
                CanDisplay cd2 = new CanDisplay(Ltmp);
                int index2 = Collections.binarySearch(candisplay,cd2); //look up CAN ID in display table
                
                if(index2 < 0) // If canID was found
                {
                    Canmsginfo cmi5 = new Canmsginfo(Ltmp);
                    int index5 = Collections.binarySearch(canidlist,cmi5); // search database for canID information
                    if(index5 < 0) // when not found add a dummy to list
                    {
                        index5 = -index5-1;
                        canidlist.add(index5,new Canmsginfo(Ltmp,"NOT LISTED"));
                    }
                    
                    //ADD new CAN ID with database info to display list
                    Canmsginfo cmi6 = new Canmsginfo(canidlist.get(index5));
                    CanDisplay cd3 = new CanDisplay(Ltmp,cmi6);
                    candisplay.add((-index2-1),cd3); // add new CAN ID to list
                    index2 = Collections.binarySearch(candisplay,cd2);
                    count3 += 1;
                }
                //update Display data
                cd2 = candisplay.get(index2); // extract it
                cd2.count += 1; //update count
                cd2.setCmsg2(can1); //update current CAN msg
                candisplay.set(index2,cd2); // restore it
                
            } 
            
            //PRINT CANIDS FOR TESTING
            System.out.printf("\n\n\n\n ----- PRINTING CAN IDS -_----------\n");
            Iterator<CanDisplay> itr = candisplay.iterator();
            
            while(itr.hasNext())
            {
                 CanDisplay x = itr.next();
                        System.out.format("CD: %3d 0x%08X %4d %s\t%2d %s\t%s\n",count4++,
                                x.can_hex,
                                x.count,
                                x.cmi.can_name,
                                x.cmi.pay_type_code,
                                x.cmi.descript_canid,
                                dbpay.convert(x),x /* Convert payload for display */
                                );
                        x.count = 0; // Reset count for next display interval
            }
            
            System.out.printf("\n\n\n\n\n ------ PRINTING CAN IDS FINISHED -----------\n");
        /* Use Cams2j.convertHextoBinary and pass string as param to get hexArray
                Query database using hexArray and pass information into Canmsginfo object - use Pcc_defines code
                MAY WANT TO CHANGE CAMSGINFO TO CANDISPLAY FOR EASIER STORAGE
            USE CANDISPLAY -> DBPAYLOAD TO PARSE DB INFO INTO CANDISPLAY FIELDS FOR FILLING OUT COLUMNS
            Call Pcc_defines genlistCanID to query DB and return an arraylist of canmsg2js
            */
        
        
        return candisplay;
    }
    
    
}
