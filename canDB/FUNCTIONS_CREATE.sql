--
DROP TABLE FUNCTIONS;
--
CREATE TABLE FUNCTIONS 
(
FUNCTION_NAME varchar(24) PRIMARY KEY,
CANID_CMD_NAME varchar(48) NOT NULL UNIQUE,
CAN_UNIT_NAME varchar(24) NOT NULL,
FUNCTION_TYPE varchar(24),
DESCRIPTION7 varchar(128) NOT NULL UNIQUE
);


