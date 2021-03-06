USE SCT;

CREATE TABLE CLINICS (
    NAME	VARCHAR(255)	NOT NULL,
    ADDRESS	VARCHAR(255)    NOT NULL,
    PHN_NO	INTEGER		 	NOT NULL,
    HOURS	TIME			NOT NULL,
    PRIMARY KEY(ADDRESS, PHN_NO)
    
    
);

CREATE TABLE DENTIST (
	EMP_ID	INTEGER		PRIMARY KEY		NOT NULL,
    NAME	VARCHAR(255)				NOT NULL,
    EMAIL	VARCHAR(255),
    CERTIFICATION 	VARCHAR(255)		NOT NULL

);

CREATE TABLE HYGENIST (
	EMP_ID	INTEGER		PRIMARY KEY		NOT NULL,
    NAME	VARCHAR(255)				NOT NULL,
    CERTIFICATION	VARCHAR(255)		NOT NULL
);

CREATE TABLE SECRETARY (
	EMP_ID	INTEGER		PRIMARY KEY		NOT NULL,
    NAME	VARCHAR(255) 				NOT NULL,
    EMAIL	VARCHAR(255)
);

CREATE TABLE PATIENT (
	SIN		INTEGER				NOT NULL,
    ID		INTEGER				NOT NULL,
    NAME	VARCHAR(255)		NOT NULL,
    DOB		VARCHAR(255)		NOT NULL,
    ADDRESS	VARCHAR(255)		NOT NULL,
    PHN_NO	INTEGER				NOT NULL,
    EMAIL	VARCHAR(255),
    
    PRIMARY KEY(SIN, ID)
);

CREATE TABLE MEDICAL_RECORD (
	PID		INTEGER		NOT NULL,
    ALLERGIES VARCHAR(255),
    MED_HISTORY	VARCHAR(10000),
    CURRENT_MEDS VARCHAR(10000),
    FOREIGN KEY (PID) REFERENCES PATIENT(SIN, ID)
);

CREATE TABLE SCHEDULE (
	DENTISIT_ID	INTEGER	NOT NULL,
    APP_DATE	DATE	NOT NULL,
    APP_TIME	TIME	NOT NULL,
    FOREIGN KEY (DENTIST_ID) REFERENCES DENTIST(EMP_ID)
);

CREATE TABLE INSURANCE (
	POLICY_NO	INTEGER		PRIMARY KEY		NOT NULL,
    COMPANY		VARCHAR(255) NOT NULL,
    COVERAGE	VARCHAR(10000)	NOT NULL
);

CREATE TABLE VISIT (
    PID		INTEGER		NOT NULL,
    VDATE	DATE		NOT NULL,
    REASON 	VARCHAR(10000),
    FOREIGN KEY PID REFERENCES PATIENT(ID)                      #causes error
);

CREATE TABLE PROC (
	NAME	VARCHAR(255)	PRIMARY KEY NOT NULL,
    DESCRIPTION	VARCHAR(10000)
);