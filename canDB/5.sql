INSERT INTO CANID VALUES ('CANID_TENSION_1',		'38000000', 'TENSION_1', 	'Tension_1: calibrated tension, polled by time msg');
INSERT INTO CANID VALUES ('CANID_TENSION_2',		'38800000', 'TENSION_2', 	'Tension_2: calibrated tension, polled by time msg');
INSERT INTO CANID VALUES ('CANID_CMD_TENSION_1',	'05C0000C', 'TENSION_1', 	'Tension_1: Tension_1: Command code: [0] command code, [1]-[8] depends on code');
INSERT INTO CANID VALUES ('CANID_CMD_TENSION_2',	'05C0001C', 'TENSION_2', 	'Tension_2: Tension_2: Command code: [0] command code, [1]-[8] depends on code');
INSERT INTO CANID VALUES ('CANID_MOTOR_1',		'25000000', 'MOTOR_1', 		'MOTOR_1: Motor speed');
INSERT INTO CANID VALUES ('CANID_CMD_CABLE_ANGLE',	'05D0000C', 'CABLE_ANGLE_1', 	'CableAngle1: [0] command code, [1]-[8] depends on code');
INSERT INTO CANID VALUES ('CANID_CABLE_ANGLE_1',	'3A000000', 'CABLE_ANGLE_1', 	'Cable angle for drum #1');
INSERT INTO CANID VALUES ('CANID_CABLE_ANGLE_ALARM',	'2A000000', 'CABLE_ANGLE_1',	'Cable angle unreliable for drum #1');
INSERT INTO CANID VALUES ('CANID_CMD_ENGINE_SENSOR',	'80600000', 'ENGINE_SENSOR', 	'Engine: rpm:manifold pressure');
INSERT INTO CANID VALUES ('CANID_ENG_RPMMANIFOLD',	'40600000', 'ENGINE_SENSOR', 	'Engine: rpm:manifold pressure');
INSERT INTO CANID VALUES ('CANID_ENG_TEMP',		'70600000', 'ENGINE_SENSOR', 	'Engine: thermistor converted to temp');
INSERT INTO CANID VALUES ('CANID_ENG_THERMTHROTL',	'60600000', 'ENGINE_SENSOR', 	'Engine: thermistor:throttle pot');
INSERT INTO CANID VALUES ('CANID_ENG_THROTTLE',		'50600000', 'ENGINE_SENSOR', 	'Engine: throttle');
INSERT INTO CANID VALUES ('CANID_CMD_TIMESYNC',		'C1C00000', 'TIMESYNC', 	'CANID Command GPS ');
INSERT INTO CANID VALUES ('CANID_FIX_HT_TYP_NSAT',	'B1C00000', 'TIMESYNC', 	'GPS winch fix: heigth:type fix:number sats');
INSERT INTO CANID VALUES ('CANID_FIX_LATLON',		'A1C00000', 'TIMESYNC', 	'GPS winch fix: lattitude:longitude');
INSERT INTO CANID VALUES ('CANID_LG_ER1',		'D1C00004', 'TIMESYNC', 	'1st code  CANID-UNITID_CO_OLI GPS checksum error');
INSERT INTO CANID VALUES ('CANID_LG_ER2',		'D1C00014', 'TIMESYNC', 	'2nd code  CANID-UNITID_CO_OLI GPS Fix error');
INSERT INTO CANID VALUES ('CANID_LG_ER3',		'D1C00024', 'TIMESYNC', 	'3rd code  CANID-UNITID_CO_OLI GPS Time out of step');
INSERT INTO CANID VALUES ('CANID_MC_DRUM_SELECT',	'D0800814', 'MC', 		'Drum selection');
INSERT INTO CANID VALUES ('CANID_MC_MOTOR_KEEPALIVE',	'A0800000', 'MC', 		'Curtis Controller keepalive');
INSERT INTO CANID VALUES ('CANID_MC_REQUEST_PARAM',	'D0800824', 'MC', 		'Request parameters from HC');
INSERT INTO CANID VALUES ('CANID_MC_STATE',		'FFFFFFF4', 'MC', 		'CANID: Send msgs during launch');
INSERT INTO CANID VALUES ('CANID_SE2H_ADC2_HistA',	'D0800044', 'SHAFT_ENCODER1',	'SE2: ADC2 HistogramA tx: request count, switch buffers; rx send count');
INSERT INTO CANID VALUES ('CANID_SE2H_ADC2_HistB',	'D0800054', 'SHAFT_ENCODER1', 	'SE2: ADC2 HistogramB tx: bin number, rx: send bin count');
INSERT INTO CANID VALUES ('CANID_SE2H_ADC3_ADC2_RD',	'D0800064', 'SHAFT_ENCODER1', 	'SE2: ADC3 ADC2 readings readout');
INSERT INTO CANID VALUES ('CANID_SE2H_ADC3_HistA',	'D0800024', 'SHAFT_ENCODER1', 	'SE2: ADC3 HistogramA tx: request count, switch buffers. rx: send count');
INSERT INTO CANID VALUES ('CANID_SE2H_ADC3_HistB',	'D0800034', 'SHAFT_ENCODER1', 	'SE2: ADC3 HistogramB tx: bin number, rx: send bin count');
INSERT INTO CANID VALUES ('CANID_SE2H_COUNTERnSPEED',	'30800000', 'LAUNCH', 'SE2: (Lower sheave) Count and speed');
INSERT INTO CANID VALUES ('CANID_SE2H_ERROR1',		'D0800014', 'LAUNCH', 'SE2: error1');
INSERT INTO CANID VALUES ('CANID_SE2H_ERROR2',		'D0800004', 'LAUNCH', 'SE2: error2');
INSERT INTO CANID VALUES ('CANID_SE3H_ADC2_HistA',	'D0A00044', 'LAUNCH', 'SE3: ADC2 HistogramA tx: request count, switch buffers; rx send count');
INSERT INTO CANID VALUES ('CANID_SE3H_ADC2_HistB',	'D0A00054', 'LAUNCH', 'SE3: ADC2 HistogramB tx: bin number, rx: send bin count');
INSERT INTO CANID VALUES ('CANID_SE3H_ADC3_ADC2_RD',	'D0A00064', 'LAUNCH', 'SE3: ADC3 ADC2 readings readout');
INSERT INTO CANID VALUES ('CANID_SE3H_ADC3_HistA',	'D0A00024', 'LAUNCH', 'SE3: ADC3 HistogramA tx: request count, switch buffers. rx: send count');
INSERT INTO CANID VALUES ('CANID_SE3H_ADC3_HistB',	'D0A00034', 'LAUNCH', 'SE3: ADC3 HistogramB tx: bin number, rx: send bin count');
INSERT INTO CANID VALUES ('CANID_SE3H_COUNTERnSPEED',	'30A00000', 'LAUNCH', 'SE3: (upper sheave) Count and Speed');
INSERT INTO CANID VALUES ('CANID_SE3H_ERROR1',		'D0A00014', 'LAUNCH', 'SE3: error1');
INSERT INTO CANID VALUES ('CANID_SE3H_ERROR2',		'D0A00004', 'LAUNCH', 'SE3: error2');
INSERT INTO CANID VALUES ('CANID_SE4H_ADC2_HistA',	'D0400044', 'SHAFT_ENCODER1', 'SE4: ADC2 HistogramA tx: request count, switch buffers; rx send count');
INSERT INTO CANID VALUES ('CANID_SE4H_ADC2_HistB',	'D0400054', 'SHAFT_ENCODER1', 'SE4: ADC2 HistogramB tx: bin number, rx: send bin count');
INSERT INTO CANID VALUES ('CANID_SE4H_ADC3_ADC2_RD',	'D0400064', 'SHAFT_ENCODER1', 'SE4: ADC3 ADC2 readings readout');
INSERT INTO CANID VALUES ('CANID_SE4H_ADC3_HistA',	'D0400024', 'SHAFT_ENCODER1', 'SE4: ADC3 HistogramA tx: request count, switch buffers. rx: send count');
INSERT INTO CANID VALUES ('CANID_SE4H_ADC3_HistB',	'D0400034', 'SHAFT_ENCODER1', 'SE4: ADC3 HistogramB tx: bin number, rx: send bin count');
INSERT INTO CANID VALUES ('CANID_CMD_SE4H',		'D0400074', 'SHAFT_ENCODER1', 'SE4: Command CAN: send commands to subsystem');
INSERT INTO CANID VALUES ('CANID_SE4H_COUNTERnSPEED',	'30400000', 'SHAFT_ENCODER1', 'SE4: (drive shaft) count and speed');
INSERT INTO CANID VALUES ('CANID_SE4H_ERROR1',		'D0400014', 'SHAFT_ENCODER1', 'SE4: [2]elapsed_ticks_no_adcticks<2000 ct  [3]cic not in sync');
INSERT INTO CANID VALUES ('CANID_SE4H_ERROR2',		'D0400004', 'SHAFT_ENCODER1', 'SE4: [0]encode_state er ct [1]adctick_diff<2000 ct');
INSERT INTO CANID VALUES ('CANID_TILT_ALARM',		'02800000', 'TILT_SENSE', 	'Tilt: alarm: Vector angle exceeds limit');
INSERT INTO CANID VALUES ('CANID_TILT_ANGLE',		'42E00000', 'TILT_SENSE', 	'Tilt: Calibrated angles (X & Y)');
INSERT INTO CANID VALUES ('CANID_TILT_XYZ',		'42800000', 'TILT_SENSE', 	'Calibrated to angle: x,y,z tilt readings');
INSERT INTO CANID VALUES ('CANID_TILT_XYZ_CAL',		'FFFFFFCC', 'TILT_SENSE', 	'CANID: Raw tilt ADC readings');
INSERT INTO CANID VALUES ('CANID_TILT_XYZ_RAW',		'4280000C', 'TILT_SENSE', 	'Raw tilt ADC readings');
INSERT INTO CANID VALUES ('CANID_CMD_TILT',		'42C00000', 'TILT_SENSE', 	'Command CANID');
INSERT INTO CANID VALUES ('CANID_TIMESYNC',		'00200000', 'TILT_SENSE', 	'GPS time sync distribution msg');
INSERT INTO CANID VALUES ('CANID_TIME_MSG',		'FFFFFFE4', 'TILT_SENSE', 	'CANID: Time msg');
INSERT INTO CANID VALUES ('CANID_UNIT_19',		'0280000C', 'UNIT_19', 		'Sensor unit: Lower sheave shaft encoder');
INSERT INTO CANID VALUES ('CANID_UNIT_2',		'00400000', 'UNIT_2', 		'Sensor unit: Drive shaft encoder');
INSERT INTO CANID VALUES ('CANID_UNIT_3',		'00600000', 'UNIT_3', 		'Sensor unit: Engine');
INSERT INTO CANID VALUES ('CANID_UNIT_4',		'00800000', 'UNIT_4', 		'Sensor unit: Lower sheave shaft encoder');
INSERT INTO CANID VALUES ('CANID_UNIT_5',		'00A00000', 'UNIT_5', 		'Sensor unit: Upper sheave shaft encoder');
INSERT INTO CANID VALUES ('CANID_UNIT_8',		'01000000', 'UNIT_8', 		'Sensor unit: Level wind');
INSERT INTO CANID VALUES ('CANID_UNIT_9',		'01200000', 'UNIT_9', 		'Sensor unit: XBee receiver #1');
INSERT INTO CANID VALUES ('CANID_UNIT_99',		'FFFFFFF4', 'UNIT_99', 		'Dummy for missing CAN IDs');
INSERT INTO CANID VALUES ('CANID_UNIT_A',		'0140000C', 'UNIT_A', 		'Sensor unit: XBee receiver #2');
INSERT INTO CANID VALUES ('CANID_UNIT_B',		'0160000C', 'UNIT_B', 		'Display driver/console');
INSERT INTO CANID VALUES ('CANID_UNIT_C',		'0180000C', 'UNIT_C', 		'CAWs Olimex board');
INSERT INTO CANID VALUES ('CANID_UNIT_D',		'01A0000C', 'UNIT_D', 		'POD board sensor prototype ("6" marked on board)');
INSERT INTO CANID VALUES ('CANID_UNIT_E',		'01C0000C', 'UNIT_E', 		'Logger: sensor board w ublox gps & SD card');
INSERT INTO CANID VALUES ('CANID_UNIT_FF',		'FFFFFFE4', 'UNIT_FF', 		'Dummy: for HC sandbox');
INSERT INTO CANID VALUES ('CANID_CMD_SANDBOX_1',	'28E00000', 'SANDBOX_1',	'HC: SANDBOX_1: Launch parameters');

