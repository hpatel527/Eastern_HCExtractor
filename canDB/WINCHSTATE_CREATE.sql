--
DROP TABLE WINCHSTATE;
--
CREATE TABLE WINCHSTATE 
(
WINCHSTATE_NAME varchar(24) PRIMARY KEY,
WINCHSTATE_CODE	NUMERIC,
DESCRIPTION19 varchar(128) NOT NULL UNIQUE
);


