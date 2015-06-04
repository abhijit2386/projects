drop schema if exists HOSPITAL;

create schema HOSPITAL;

use HOSPITAL;

CREATE TABLE PATIENTS(
	PATIENT_ID INT PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME TEXT(150),
    LAST_NAME TEXT(150),
    GENDER TEXT(6),
    DOB Date,
    EMAIL TEXT(200),
    MOBILE TEXT(10),
    PHONE TEXT(15)
);

