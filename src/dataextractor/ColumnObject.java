/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataextractor;

import derbytest.CanDisplay;
import derbytest.DbPayload;

/**
 *
 * @author minidude34
 */
public class ColumnObject {
    /* int drumInstance = 0;
            if(c.cmi.descript_payload.contains("Drum 1"))
                drumInstance = 1;
            if(c.cmi.descript_payload.contains("Drum 2"))
                drumInstance = 2;
            data.add(count,0,c.can_hex,c.cmi.pay_type_code,0,c.id,c.cmi.descript_canid,c,dbpay.convert(c));
    
    */
    
    private int count;
    private CanDisplay cd;
    private DbPayload dbpayload;
    private Integer drumInstance;
    private String hexCode;
    private Integer payType;
    private Integer canID;
    private String canDescript;
    private String canPayload;
    private String canName;
    private Integer payCount;
    private String msgFMT;
    
    public ColumnObject(int count,CanDisplay cd,DbPayload dbpayload)
    {
        this.count = count;
        this.cd = cd;
        this.dbpayload = dbpayload;
        this.drumInstance = 0;
        this.payCount = cd.count;
        this.msgFMT = cd.cmi.can_msg_fmt;
        
        boolean b1 = cd.cmi.descript_canid.matches("Drum 1");
        boolean b2 = cd.cmi.descript_canid.matches("Drum 2");
        if(b1)
            this.drumInstance = 1;
        if(b2)
            this.drumInstance = 2;
            
        this.hexCode= Long.toHexString(cd.can_hex);
        this.payType = cd.cmi.pay_type_code;
        this.canID = cd.id;
        this.canDescript = cd.cmi.descript_canid;
        this.canPayload = dbpayload.convert(cd);
        this.canName = cd.cmi.can_name;
    }
    
    public String getHexCode()
    {
        return String.format("0x%08X",this.cd.can_hex);
    }
    
    public String getCanID()
    {
        return String.format("%3d",this.canID);
    }
     public String getCanDescript()
    {
        return this.canDescript;
    }
      public String getPayType()
    {
        return String.format("%2d",this.payType);
    }
      public String getCanName()
      {
          return this.canName;
      }
      public Integer getDrumInstance()
      {
          return this.drumInstance;
      }
      
      public String getMsgFMT()
      {
          return this.msgFMT;
      }
      
      public String getCanPayload()
    {
        return this.canPayload;
    }
    
    public int getCount()
    {
        return this.count;
    }
    
    public String getPayCount()
    {
        return String.format("%4d",this.payCount);
    }

    public CanDisplay getCanDisplay()
    {
        return this.cd;
    }
    public DbPayload getDbPayload()
    {
        return this.dbpayload;
    }
    
}
