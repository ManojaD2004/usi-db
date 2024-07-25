CREATE TABLE L2_BRANCH (
    BRANCH_ID VARCHAR2(20) NOT NULL PRIMARY KEY,
    BRANCH_NAME VARCHAR2(50) NOT NULL
);

CREATE TABLE L2_TEACHERS (
    BRANCH_ID VARCHAR2(20) NOT NULL,
    T_ID VARCHAR2(30) NOT NULL PRIMARY KEY,
    T_NAME VARCHAR2(50) NOT NULL,
    T_AGE INT NOT NULL,
    T_ROLE VARCHAR2(50) NOT NULL,
    CONSTRAINT FK_BRANCH_ID_TEACHERS FOREIGN KEY (BRANCH_ID) REFERENCES L2_BRANCH (BRANCH_ID)
);

CREATE TABLE L2_SUBJECT_DETAILS (
    SUBJECT_CODE VARCHAR2(20) NOT NULL PRIMARY KEY,
    SUBJECT_NAME VARCHAR2(50) NOT NULL
);

CREATE TABLE L2_SUBJECTS (
    SUBJECT_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    BRANCH_ID VARCHAR2(20) NOT NULL,
    SUBJECT_CODE VARCHAR2(20) NOT NULL,
    T_INCHARGE_ID VARCHAR2(30) NOT NULL,
    TOTAL_CLASS INT DEFAULT 0,
    CONSTRAINT FK_BRANCH_ID_SUBJECTS FOREIGN KEY (BRANCH_ID) REFERENCES L2_BRANCH (BRANCH_ID),
    CONSTRAINT FK_T_INCHARGE_ID_SUBJECTS FOREIGN KEY (T_INCHARGE_ID) REFERENCES L2_TEACHERS (T_ID),
    CONSTRAINT FK_SUBJECT_CODE_SUBJECTS FOREIGN KEY (SUBJECT_CODE) REFERENCES L2_SUBJECT_DETAILS (SUBJECT_CODE),
    CONSTRAINT UQ_L2_SUBJECTS UNIQUE (BRANCH_ID, T_INCHARGE_ID, SUBJECT_CODE)
);

CREATE TABLE L2_STUDENTS (
    USN VARCHAR2(30) NOT NULL PRIMARY KEY,
    EMAIL_ID VARCHAR2(30) NOT NULL UNIQUE,
    STD_NAME VARCHAR2(50) NOT NULL,
    SEM INT NOT NULL,
    SECTION VARCHAR2(5) NOT NULL,
    AGE INT NOT NULL,
    BRANCH_ID VARCHAR2(20) NOT NULL,
    GENDER VARCHAR2(10) NOT NULL,
    CONSTRAINT FK_BRANCH_ID_STUDENTS FOREIGN KEY (BRANCH_ID) REFERENCES L2_BRANCH (BRANCH_ID)
);

CREATE TABLE L2_STUDENTS_DETAILS (
    USN VARCHAR2(30) NOT NULL UNIQUE,
    FATHER_NAME VARCHAR2(50),
    MOTHER_NAME VARCHAR2(50),
    ADDRESS VARCHAR2(100),
    PHONE_NO VARCHAR2(20),
    CONSTRAINT FK_USN_STUDENTS_DETAILS FOREIGN KEY (USN) REFERENCES L2_STUDENTS (USN)
);

CREATE TABLE L2_STUDENTS_SUBJECTS (
    SUBJECT_ID INT NOT NULL,
    USN VARCHAR2(30) NOT NULL,
    CONSTRAINT FK_SUBJECT_ID_STUDENTS_SUBJECTS FOREIGN KEY (SUBJECT_ID) REFERENCES L2_SUBJECTS (SUBJECT_ID),
    CONSTRAINT FK_USN_STUDENTS_SUBJECTS FOREIGN KEY (USN) REFERENCES L2_STUDENTS (USN),
    PRIMARY KEY (SUBJECT_ID, USN)
);

CREATE TABLE L2_CLASSES (
    CLASS_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    CLASS_NO INT NOT NULL,
    SUBJECT_ID INT NOT NULL,
    CLASS_DATE DATE NOT NULL,
    CLASS_TIME TIMESTAMP NOT NULL,
    CONSTRAINT FK_SUBJECT_ID_CLASSES FOREIGN KEY (SUBJECT_ID) REFERENCES L2_SUBJECTS (SUBJECT_ID),
    CONSTRAINT UQ_L2_CLASSES_CLASS_NO_SUBJECT UNIQUE (CLASS_NO, SUBJECT_ID),
    CONSTRAINT UQ_L2_CLASSES_SUBJECT_DATE_TIME UNIQUE (SUBJECT_ID, CLASS_DATE, CLASS_TIME)
);

CREATE TABLE L2_STUDENTS_ATTEND (
    CLASS_ID INT NOT NULL,
    USN VARCHAR2(30) NOT NULL,
    ATTENDANCE CHAR(1) NOT NULL CHECK (ATTENDANCE IN ('Y', 'N')),
    CONSTRAINT FK_USN_ATTEND FOREIGN KEY (USN) REFERENCES L2_STUDENTS (USN),
    CONSTRAINT FK_CLASS_ID_ATTEND FOREIGN KEY (CLASS_ID) REFERENCES L2_CLASSES (CLASS_ID),
    PRIMARY KEY (CLASS_ID, USN)
);

CREATE TABLE L2_TESTS (
    TEST_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    TEST_CODE VARCHAR2(20) NOT NULL,
    SUBJECT_ID INT NOT NULL,
    TEST_DATE DATE NOT NULL,
    TEST_TIME TIMESTAMP NOT NULL,
    TOTAL_MARKS NUMBER(10, 2) DEFAULT 1,
    CONSTRAINT FK_SUBJECT_ID_TESTS FOREIGN KEY (SUBJECT_ID) REFERENCES L2_SUBJECTS (SUBJECT_ID),
    CONSTRAINT UQ_L2_TESTS_TEST_CODE_SUBJECT UNIQUE (TEST_CODE, SUBJECT_ID),
    CONSTRAINT UQ_L2_TESTS_SUBJECT_DATE_TIME UNIQUE (SUBJECT_ID, TEST_DATE, TEST_TIME)
);

CREATE TABLE L2_STUDENTS_MARKS (
    TEST_ID INT NOT NULL,
    USN VARCHAR2(30) NOT NULL,
    MARKS NUMBER(10, 2) NOT NULL,
    CONSTRAINT FK_USN_MARKS FOREIGN KEY (USN) REFERENCES L2_STUDENTS (USN),
    CONSTRAINT FK_TEST_ID_MARKS FOREIGN KEY (TEST_ID) REFERENCES L2_TESTS (TEST_ID),
    PRIMARY KEY (TEST_ID, USN)
);

CREATE TABLE L2_ANNOUNCEMENT (
    ANNOUNCEMENT_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    BRANCH_ID VARCHAR2(20) DEFAULT 'all',
    ANNOUNCEMENT_MESSAGE CLOB NOT NULL,
    ANNOUN_DATE DATE DEFAULT CURRENT_DATE,
    ANNOUN_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_BRANCH_ID_ANNOUNCEMENT FOREIGN KEY (BRANCH_ID) REFERENCES L2_BRANCH (BRANCH_ID)
);