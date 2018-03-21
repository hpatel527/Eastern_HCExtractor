-- FUNCTIONS table
-- 07/11/2015, 05/11/2016
--
-- Associates specific functions (or instances of a generic function)
--   with a CAN unit, GENERIC function type, and the command CAN ID.
--   Programs can implement a number of generic functions, but units
--   running the program provide a specific instance of the generic function.
--
-- FUNCTION_NAME varchar(24) PRIMARY KEY,
--  Each *instance* of a function has a unique name, even though it there can be many functions that are
--  all the same FUNCTION_TYPE, e.g. tension for drum #1, #2, etc. are are the same *type*, but
--  each has a specific *name*.  
--
-- CANID_CMD_NAME varchar(48) NOT NULL UNIQUE,
--  The name of the CAN ID in CANID_INSERT.sql used for commands with this function.
--
-- FUNCTION_TYPE varchar(24),
--  The *type* of function for this *instance* of the function 
--
-- DESCRIPTION7 varchar(128) NOT NULL UNIQUE
--  Good words that might mean something to someone. 
--
DELETE from FUNCTIONS;
--                            FUNCTION_NAME       CANID_CMD_NAME               CAN_UNIT_NAME     FUNCTION_TYPE     DESCRIPTION7
INSERT INTO FUNCTIONS VALUES ('DRIVE_SHAFT',	'CANID_CMD_DRIVE_SHAFT',	'CAN_UNIT_2',	'SHAFT_ENCODER','Sensor, shaft: Drive shaft encoder' );
INSERT INTO FUNCTIONS VALUES ('SHAFT_UPPERSHV', 'CANID_CMD_UPPERSHV',		'CAN_UNIT_4',	'SHAFT_ENCODER','(Upper sheave)' );
INSERT INTO FUNCTIONS VALUES ('SHAFT_LOWERSHV', 'CANID_CMD_LOWERSHV',		'CAN_UNIT_5',	'SHAFT_ENCODER','(Lower sheave) Count and speed' );
INSERT INTO FUNCTIONS VALUES ('ENGINE_SENSOR', 	'CANID_CMD_ENGINE_SENSOR',	'CAN_UNIT_3',	'ENGINE_SENSOR','Sensor, engine: rpm, manifold pressure, throttle setting, temperature' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a1W', 	'CANID_CMD_TENSION_a1W',	'CAN_UNIT_F',	'TENSION_a',	'Tension_a: Tension drum #1 AD7799 #1' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a2W', 	'CANID_CMD_TENSION_a2W',	'CAN_UNIT_F',	'TENSION_a2',	'Tension_a: Tension drum #1 AD7799 #2' );
INSERT INTO FUNCTIONS VALUES ('CABLE_ANGLE_1', 	'CANID_CMD_CABLE_ANGLE_1',	'CAN_UNIT_F',	'CABLE_ANGLE', 	'Cable angle AD7799 #2 drum #1' );
INSERT INTO FUNCTIONS VALUES ('TENSION_2', 	'CANID_CMD_TENSION_2',		'CAN_UNIT_14',	'TENSION_c',	'Tension_2: Tension AD7799 #1 drum #2' );
--INSERT INTO FUNCTIONS VALUES ('TENSION_CAL_1', 	'CANID_CMD_TENSION_CAL_1',	'CAN_UNIT_15',	'TENSION_a',	'Calibration tension: S-load-cell #1' );
INSERT INTO FUNCTIONS VALUES ('CABLE_ANGLE_2', 	'CANID_CMD_CABLE_ANGLE_2',	'CAN_UNIT_14',	'CABLE_ANGLE',	'Cable angle AD7799 #2 drum #2' );

INSERT INTO FUNCTIONS VALUES ('GPS_1',		'CANID_CMD_GPS_1',		'CAN_UNIT_E',	'GPS',		'GPS_1 time sync distribution msg' );
INSERT INTO FUNCTIONS VALUES ('LOGGER_1',	'CANID_CMD_LOGGER_1',		'CAN_UNIT_E',	'LOGGER',	'Logger_1' );
INSERT INTO FUNCTIONS VALUES ('GPS_2',		'CANID_CMD_GPS_2',		'CAN_UNIT_1A',	'GPS',		'GPS_2 time sync distribution msg ' );
INSERT INTO FUNCTIONS VALUES ('LOGGER_2',	'CANID_CMD_LOGGER_2',		'CAN_UNIT_1A',	'LOGGER',	'Logger_2' );

INSERT INTO FUNCTIONS VALUES ('HC_SANDBOX_1',	'CANID_CMD_SANDBOX_1',		'CAN_UNIT_99',	'HC_SANDBOX_1',	'Host Controller: sandbox function 1' );
INSERT INTO FUNCTIONS VALUES ('MC_a',		'CANID_CMD_MC',			'CAN_UNIT_19',	'MC',		'Master Controller' );
INSERT INTO FUNCTIONS VALUES ('TILT_SENSE_a',	'CANID_CMD_TILT',		'CAN_UNIT_10',	'TILT_SENSE',	'Tilt sensor' );
INSERT INTO FUNCTIONS VALUES ('YOGURT_1',	'CANID_CMD_YOGURT_1',		'CAN_UNIT_13',	'YOGURT_1',	'Yogurt_1: Ver 1 of maker' );

INSERT INTO FUNCTIONS VALUES ('TENSION_a0X',	'CANID_CMD_TENSION_0',		'CAN_UNIT_11',	'TENSION_a',	'Tension_a: 1 AD7799 VE POD Test (hence X) 0' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a11',	'CANID_CMD_TENSION_a11',	'CAN_UNIT_12',	'TENSION_a',	'Tension_a:  2 AD7799 VE POD Test (hence X) 1' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a21',	'CANID_CMD_TENSION_a21',	'CAN_UNIT_12',	'TENSION_a2',	'Tension_a2: 2 AD7799 VE POD Test (hence X) 1' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a1Y',	'CANID_CMD_TENSION_a1Y',	'CAN_UNIT_14',	'TENSION_a',	'Tension_a:  1 AD7799 VE POD Test (hence X) 2' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a12',	'CANID_CMD_TENSION_a12',	'CAN_UNIT_15',	'TENSION_a',	'Tension_a:  2 AD7799 VE POD Test (hence X) 3' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a22',	'CANID_CMD_TENSION_a22',	'CAN_UNIT_15',	'TENSION_a2',	'Tension_a2: 2 AD7799 VE POD Test (hence X) 3' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a1G',	'CANID_CMD_TENSION_a1G',	'CAN_UNIT_16',	'TENSION_a',	'Tension_a:  2 AD7799 VE POD GSM 1' );
INSERT INTO FUNCTIONS VALUES ('TENSION_a2G',	'CANID_CMD_TENSION_a2G',	'CAN_UNIT_16',	'TENSION_a2',	'Tension_a2: 2 AD7799 VE POD GSM 1' );

INSERT INTO FUNCTIONS VALUES ('CANSENDER_1',	'CANID_CMD_CANSENDER_1',	'CAN_UNIT_1B',	'CANSENDER',	'Cansender_1: Sensor board test' );
INSERT INTO FUNCTIONS VALUES ('CANSENDER_2',	'CANID_CMD_CANSENDER_2',	'CAN_UNIT_1C',	'CANSENDER',	'Cansender_2: Sensor board test' );


