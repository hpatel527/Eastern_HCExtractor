DROP TABLE T3;
CREATE TABLE T3 AS (SELECT * FROM CANID JOIN PAYLOAD_TYPE ON CANID.CAN_MSG_FMT = PAYLOAD_TYPE.PAYLOAD_TYPE_NAME) WITH NO DATA;
ALTER TABLE T3 ADD PRIMARY KEY (CANID_HEX);
INSERT INTO T3 (SELECT * FROM CANID JOIN PAYLOAD_TYPE ON CANID.CAN_MSG_FMT = PAYLOAD_TYPE.PAYLOAD_TYPE_NAME);

SELECT * FROM T3;

