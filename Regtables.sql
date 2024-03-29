DROP TABLE IF EXISTS STUDENT_REG_DETAILS;
DROP TABLE IF EXISTS STUDENT_JEE_DETAILS;
DROP TABLE IF EXISTS STUDENT_DESEASE;
DROP TABLE IF EXISTS STUDENT_PAYMENTS;
DROP TABLE IF EXISTS DD_DB;
DROP TABLE IF EXISTS STUDENT_10_DB;
DROP TABLE IF EXISTS STUDENT_12_DB;
DROP TABLE IF EXISTS STUDENT_CURR_ADD;
DROP TABLE IF EXISTS STUDENT_PER_ADD;
DROP TABLE IF EXISTS STUDENT_DOCUMENTS;
DROP TABLE IF EXISTS STUDENT_JEE_DETAILS;
DROP TABLE IF EXISTS STUDENT_FORM;

CREATE TABLE STUDENT_FORM(
    JEE_ROLL_NO INTEGER UNIQUE,
    FORM_ID INTEGER auto_increment primary KEY,
    DATE_OF_REG DATE    
);

CREATE TABLE STUDENT_REG_DETAILS(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    SNAME VARCHAR(30),
    GENDER VARCHAR(1),
    BLOOD_GROUP VARCHAR(5),
    DOB DATE,
    MOBILE1 VARCHAR(11),
    EMAIL VARCHAR(30),
    AADHAR_NO VARCHAR(20),
    BRANCH VARCHAR(3),
    MINORITY VARCHAR(10),
    FATHER_NAME VARCHAR(30),
    FATHER_OCCUPATION VARCHAR(30),
    MOTHER_NAME VARCHAR(30),
    MOTHER_OCCUPATION VARCHAR(30),
    PARENT_MOBILE VARCHAR(11),
    HOSTEL_REQ VARCHAR(5),
    PHOTO VARCHAR(30),
    SIGN VARCHAR(30),
    
    
    FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);

CREATE TABLE STUDENT_DESEASE(
    JEE_ROLL_NO INTEGER,
    CHRONIC_DISEASE VARCHAR(4),
    DETAILS VARCHAR(100),

    FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)

);

CREATE TABLE DD_DB(
    DD_NO VARCHAR(20) PRIMARY KEY,
    DD_DATE DATE,
    DD_AMOUNT INTEGER
);

CREATE TABLE STUDENT_PAYMENTS(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    JOSSA_DD VARCHAR(20),
    INST_DD VARCHAR(20),

    FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO),
    FOREIGN KEY(JOSSA_DD) REFERENCES DD_DB(DD_NO),
    FOREIGN KEY(INST_DD) REFERENCES DD_DB(DD_NO)
);


CREATE TABLE STUDENT_10_DB(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    BOARD_NAME VARCHAR(30),
    PASSING_YEAR VARCHAR(4),
    PERCENTAGE INTEGER,

     FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);

CREATE TABLE STUDENT_12_DB(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    BOARD_NAME VARCHAR(30),
    SUBJECT VARCHAR(30),
    PASSING_YEAR VARCHAR(4),
    PERCENTAGE INTEGER,

     FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);

CREATE TABLE STUDENT_CURR_ADD(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    ADDRESS VARCHAR(100),
    CITY VARCHAR(30),
    STATE VARCHAR(30),
    PIN_CODE VARCHAR(6),
    PHONE VARCHAR(11),

 FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);


CREATE TABLE STUDENT_PER_ADD(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    ADDRESS VARCHAR(100),
    CITY VARCHAR(30),
    STATE VARCHAR(30),
    PIN_CODE VARCHAR(6),
    PHONE VARCHAR(11),

     FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);

CREATE TABLE STUDENT_DOCUMENTS(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    ALLOTMENT_LETTER VARCHAR(30),
    JEE_RANK_CARD VARCHAR(30),
    PHOTO_ID VARCHAR(30),
    DOB VARCHAR(30),
    QEXAM VARCHAR(30),
    INCOME_CERTIFICATE VARCHAR(30),
    CAST_CERTIFICATE VARCHAR(30),
    CAST_VALIDITY VARCHAR(30),
    OBC_CERTIFICATE VARCHAR(30),
    DISABILITY_CERTIFICATE VARCHAR(30),
    TRANSFER_CERTIFICATE VARCHAR(30),
    MIGRATION_CERTIFICATE VARCHAR(30),
    AADHAR_CARD VARCHAR(30),
    GAP_CARD VARCHAR(30),
    
     FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);

CREATE TABLE STUDENT_JEE_DETAILS(
    JEE_ROLL_NO INTEGER PRIMARY KEY,
    ALLOTMENT_ROUND VARCHAR(2),
    AIR INTEGER,
    PERCENTILE INTEGER,
    ALLOTMENT_CATEGORY VARCHAR(10),
    CANDIDATE_CATEGORY VARCHAR(10),
    FOREIGN KEY(JEE_ROLL_NO) REFERENCES STUDENT_FORM(JEE_ROLL_NO)
);

INSERT INTO STUDENT_FORM VALUES(1,1);
-- INSERT INTO STUDENT_REG_DETAILS(JEE_ROLL_NO,SNAME,GENDER,BLOOD_GROUP,DOB,MOBILE1,MOBILE2,EMAIL,AADHAR_NO,BRANCH,MINORITY,FATHER_NAME,FATHER_OCCUPATION,MOTHER_NAME,MOTHER_OCCUPATION,PARENT_MOBILE,HOSTEL_REQ,PHOTO,SIGN)
-- VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

INSERT INTO STUDENT_DESEASE(  JEE_ROLL_NO,CHRONIC_DISEASE,DETAILS) VALUES(?,?,?);

INSERT INTO DD_DB(DD_NO,DD_DATE,DD_AMOUNT) VALUES(?,?,?);

INSERT INTO STUDENT_PAYMENTS( JEE_ROLL_NO,JOSSA_DD,INST_DD) VALUES(?,?,?);

INSERT INTO STUDENT_10_DB(JEE_ROLL_NO,BOARD_NAME,PASSING_YEAR,PERCENTAGE) VALUES(?,?,?,?);

INSERT INTO STUDENT_CURR_ADD(JEE_ROLL_NO,ADDRESS,CITY,STATE,PIN_CODE,PHONE) VALUES(?,?,?,?,?,?);

INSERT INTO STUDENT_JEE_DETAILS(JEE_ROLL_NO,ALLOTMENT_ROUND,AIR,PERCENTILE,ALLOTMENT_CATEGORY,CANDIDATE_CATEGORY) VALUES(?,?,?,?,?,?);

INSERT INTO STUDENT_DOCUMENTS(  JEE_ROLL_NO, ALLOTMENT_LETTER,    JEE_RANK_CARD ,    PHOTO_ID ,    DOB ,    QEXAM,    INCOME_CERTIFICATE,    CAST_CERTIFICATE,    CAST_VALIDITY ,    OBC_CERTIFICATE ,    DISABILITY_CERTIFICATE,    TRANSFER_CERTIFICATE ,    MIGRATION_CERTIFICATE,    AADHAR_CARD ,    GAP_CARD) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);