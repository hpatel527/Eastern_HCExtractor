DELETE from FUNCTION_CODES;
--07/18/2015
--
-- One use of this table is to associate the fuction name with the function code
--   for use in generating a table of CAN IDs used for function commands for
--   a specific unit.
--
-- FUNCTION_NAME (PRIMARY KEY)
--   Each function must have a unique name.  
--
-- FUNCTION_TYPE
--   There can be multiple functions present that are the same type of function, e.g.
--   tension for drum #1, #2, etc., are different functions, but all are the same type.
--
-- CAN_UNIT_NAME
--   This is the name of the CAN unit (node) that provides this function (i.e. FUNCTION_NAME). 
-- 
-- FUNCTION_CODE (UNIQUE) 
--   numeric code for function for use in tables.   A table in highflash pairs a command CAN ID
--   with the function by using the numeric code (as name strings would be a tad inefficient for
--   for the STM32). (see ../gitrepo/svn_common/trunk/common_highflash.h)
--     The first uint32_t of the pair = code = FUNCTION_CODE
--     The second uint32_t of the pair is the hex CAN ID (0xhhhhhhhh)
--   The table used in highflash is generated by a java program using SQL queries to this database.

-- DESCRIPTION6 (UNIQUE)
--   Soothing words to help from falling into the hopelessness when trying to 
--   understanding this mess.
--
--                                  FUNCTION_NAME       FUNCTION_TYPE       CAN_UNIT_NAME  FUNCTION_CODE    DESCRIPTION6
INSERT INTO FUNCTION_CODES VALUES ('DRIVE_SHAFT'	,'ENCODER',		'UNIT_2',	1,	'Sensor, shaft: Drive shaft encoder' );
INSERT INTO FUNCTION_CODES VALUES ('ENGINE_SENSOR'	,'ENGINE_SENSOR',	'UNIT_3',	2,	'Sensor, engine: rpm, manifold pressure, throttle setting, temperature' );
INSERT INTO FUNCTION_CODES VALUES ('TENSION_X'		,'TENSION',		'UNIT_D', 	3,	'Tension_X: POD board, NO AD7799');
INSERT INTO FUNCTION_CODES VALUES ('TENSION_a1X'	,'TENSION_a',		'UNIT_F', 	4,	'Tension_a1x: Tension drum #1 AD7799 #1 (a)' );
INSERT INTO FUNCTION_CODES VALUES ('CABLE_ANGLE_1'	,'CABLE_ANGLE',		'UNIT_F',	5,	'Cable_Angle_1: Cable angle drum #1' );
INSERT INTO FUNCTION_CODES VALUES ('LEVEL_WIND'		,'LEVEL_WIND',		'UNIT_8',	6,	'Level wind: current sensing' );

INSERT INTO FUNCTION_CODES VALUES ('GPS_1'		,'GPS',			'UNIT_E',	7,	'GPS_1: ublox: time sync distribution msg' );
INSERT INTO FUNCTION_CODES VALUES ('LOGGER_1'		,'LOGGER',		'UNIT_E',	20,	'Logger 1: sensor board w SD card' );

INSERT INTO FUNCTION_CODES VALUES ('GPS_2'		,'GPS',			'UNIT_1A',	22,	'GPS_2: ublox: time sync distribution msg' );
INSERT INTO FUNCTION_CODES VALUES ('LOGGER_2'		,'LOGGER',		'UNIT_1A',	21,	'Logger 2: sensor board w SD card' );

INSERT INTO FUNCTION_CODES VALUES ('TENSION_a1W'	,'TENSION_a',		'UNIT_F', 	8,	'Tension_1w: Tension drum #1 AD7799 #2 (b)' );
INSERT INTO FUNCTION_CODES VALUES ('YOGURT_1'		,'YOGURT_1',		'UNIT_13', 	9,	'Yogurt_1: Yogurt maker #1');

INSERT INTO FUNCTION_CODES VALUES ('TENSION_a0X'	,'TENSION_a',		'UNIT_11', 	10,	'Tension_a1: 1 AD7799 #1 VE POD Test (hence X) 0' );

INSERT INTO FUNCTION_CODES VALUES ('TENSION_a11'	,'TENSION_a',		'UNIT_12', 	12,	'Tension_a1: 2 AD7799 #1 VE POD Test (hence X) 1' );
INSERT INTO FUNCTION_CODES VALUES ('TENSION_a21'	,'TENSION_a2',		'UNIT_12', 	13,	'Tension_a2: 2 AD7799 #2 VE POD Test (hence X) 1' );

INSERT INTO FUNCTION_CODES VALUES ('TENSION_a1Y'	,'TENSION_a',		'UNIT_14', 	14,	'Tension_a1: 1 AD7799 #1 VE POD Test (hence X) 2' );

INSERT INTO FUNCTION_CODES VALUES ('TENSION_a12'	,'TENSION_a',		'UNIT_15', 	16,	'Tension_a1: 2 AD7799 #1 VE POD Test (hence X) 3' );
INSERT INTO FUNCTION_CODES VALUES ('TENSION_a22'	,'TENSION_a2',		'UNIT_15', 	17,	'Tension_a2: 2 AD7799 #2 VE POD Test (hence X) 3' );

INSERT INTO FUNCTION_CODES VALUES ('CANSENDER_1'	,'CANSENDER',		'UNIT_1B', 	23,	'Cansender_1: Sensor board test' );
INSERT INTO FUNCTION_CODES VALUES ('CANSENDER_2'	,'CANSENDER',		'UNIT_1C', 	24,	'Cansender_2: Sensor board test' );


INSERT INTO FUNCTION_CODES VALUES ('TENSION_a1G'	,'TENSION_a',		'UNIT_16', 	18,	'Tension_a1: 2 AD7799 #1 VE POD GSM 1' );
INSERT INTO FUNCTION_CODES VALUES ('TENSION_a2G'	,'TENSION_a2',		'UNIT_16', 	19,	'Tension_a2: 2 AD7799 #2 VE POD GSM 1' );
