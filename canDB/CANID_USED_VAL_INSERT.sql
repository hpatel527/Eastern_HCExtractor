DELETE from CANID_USED_VAL;
--                                    MSG_NAME          FUNCTION_NAME    FUNCTION_TYPE     CANID_NAME               DESCRIPTION
INSERT INTO CANID_USED_VAL VALUES ('MSG_TENSION',	'TENSION_0', 	 'TENSION',	'CANID_MSG_TENSION_0',	'Tension_0: Default measurement canid');
INSERT INTO CANID_USED_VAL VALUES ('MSG_TIME_POLL',	'TENSION_0', 	 'TENSION',	'CANID_MSG_TIME_POLL',	'Tension_1 msg: MC: Time msg/Group polling');

INSERT INTO CANID_USED_VAL VALUES ('MSG_TENSION',	'TENSION_1', 	 'TENSION',	'CANID_MSG_TENSION_1',	'Tension_1 msg: tension drum #1 (kgf)');
INSERT INTO CANID_USED_VAL VALUES ('MSG_TIME_POLL',	'TENSION_1', 	 'TENSION',	'CANID_MSG_TIME_POLL',	'Tension_1 msg: MC: Time msg/Group polling');

INSERT INTO CANID_USED_VAL VALUES ('MSG_TENSION',	'TENSION_2', 	 'TENSION',	'CANID_MSG_TENSION_2',	'Tension_2 msg: tension drum #2 (kgf)');
INSERT INTO CANID_USED_VAL VALUES ('MSG_TIME_POLL',	'TENSION_2', 	 'TENSION',	'CANID_MSG_TIME_POLL',	'Tension_2 msg: MC: Time msg/Group polling');

INSERT INTO CANID_USED_VAL VALUES ('MSG_CABLE_ANGLE',	'CABLE_ANGLE_1', 'CABLE_ANGLE', 'CANID_MSG_CABLE_ANGLE_1',	'Cable_angle_1 msg: cable angle drum #1 (degrees)');
INSERT INTO CANID_USED_VAL VALUES ('MSG_TIME_POLL',	'CABLE_ANGLE_1', 'CABLE_ANGLE', 'CANID_MSG_TIME_POLL',		'Cable_angle_1 msg: MC: Time msg/Group polling');

INSERT INTO CANID_USED_VAL VALUES ('MSG_CABLE_ANGLE',	'CABLE_ANGLE_2', 'CABLE_ANGLE',	'CANID_MSG_CABLE_ANGLE_2',	'Cable_angle_2 msg: cable angle drum #2 (degrees)');
INSERT INTO CANID_USED_VAL VALUES ('MSG_TIME_POLL',	'CABLE_ANGLE_2', 'CABLE_ANGLE', 'CANID_MSG_TIME_POLL',		'Cable_angle_2 msg: MC: Time msg/Group polling');


