--
DROP TABLE WINCHSTATE;
--
CREATE TABLE WINCHSTATE 
(
WINCHSTATE_NAME varchar(24) PRIMARY KEY,
WINCHSTATE_VAL	NUMERIC UNIQUE,
DESCRIPTION varchar(128) NOT NULL UNIQUE
);


