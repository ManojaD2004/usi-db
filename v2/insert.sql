SET
TIMEZONE = 'Asia/Calcutta';

INSERT ALL INTO L2_BRANCH (
    BRANCH_ID,
    BRANCH_NAME
) VALUES (
    'all',
    'Whole College'
) INTO L2_BRANCH (
    BRANCH_ID,
    BRANCH_NAME
) VALUES (
    'cse',
    'Computer Science and Engineering'
) INTO L2_BRANCH (
    BRANCH_ID,
    BRANCH_NAME
) VALUES (
    'aiml',
    'Artificial Intelligence and Machine Learning'
) INTO L2_BRANCH (
    BRANCH_ID,
    BRANCH_NAME
) VALUES (
    'csd',
    'Computer Science and Design'
)
    SELECT
        *
    FROM
        DUAL;

INSERT ALL INTO L2_TEACHERS (
    BRANCH_ID,
    T_ID,
    T_NAME,
    T_AGE,
    T_ROLE
) VALUES (
    'all',
    'T1001',
    'Dr. Ravikumar GK',
    48,
    'Principal'
) INTO L2_TEACHERS (
    BRANCH_ID,
    T_ID,
    T_NAME,
    T_AGE,
    T_ROLE
) VALUES (
    'cse',
    'T1002',
    'Dr. Manjula G',
    45,
    'Professor & Head'
) INTO L2_TEACHERS (
    BRANCH_ID,
    T_ID,
    T_NAME,
    T_AGE,
    T_ROLE
) VALUES (
    'cse',
    'T1003',
    'Mr. SATHISHA G',
    40,
    'Associate Professor'
) INTO L2_TEACHERS (
    BRANCH_ID,
    T_ID,
    T_NAME,
    T_AGE,
    T_ROLE
) VALUES (
    'aiml',
    'T1004',
    'Dr. Jalaja G',
    47,
    'Professor & Head'
) INTO L2_TEACHERS (
    BRANCH_ID,
    T_ID,
    T_NAME,
    T_AGE,
    T_ROLE
) VALUES (
    'csd',
    'T1005',
    'Dr. Madhu Patil',
    49,
    'Professor & Head'
)
    SELECT
        *
    FROM
        DUAL;

INSERT ALL INTO L2_SUBJECT_DETAILS (
    SUBJECT_CODE,
    SUBJECT_NAME
) VALUES (
    'BCS403',
    'Database Management System'
) INTO L2_SUBJECT_DETAILS (
    SUBJECT_CODE,
    SUBJECT_NAME
) VALUES (
    'BCS402',
    'Micro Controllers'
) INTO L2_SUBJECT_DETAILS (
    SUBJECT_CODE,
    SUBJECT_NAME
) VALUES (
    'BCS401',
    'Analysis & Design of Algorithms'
)
    SELECT
        *
    FROM
        DUAL;

-- Subjects
INSERT INTO L2_SUBJECTS (
    BRANCH_ID,
    SUBJECT_CODE,
    T_INCHARGE_ID
) VALUES (
    'cse',
    'BCS403',
    'T1002'
);

INSERT INTO L2_SUBJECTS (
    BRANCH_ID,
    SUBJECT_CODE,
    T_INCHARGE_ID
) VALUES (
    'aiml',
    'BCS403',
    'T1004'
);

INSERT INTO L2_SUBJECTS (
    BRANCH_ID,
    SUBJECT_CODE,
    T_INCHARGE_ID
) VALUES (
    'cse',
    'BCS401',
    'T1003'
);

INSERT INTO L2_SUBJECTS (
    BRANCH_ID,
    SUBJECT_CODE,
    T_INCHARGE_ID
) VALUES (
    'cse',
    'BCS402',
    'T1005'
);

-- CSE
INSERT ALL INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS031',
    '1mp22cs031@bgscet.ac.in',
    'Manoja D',
    4,
    'A',
    19,
    'cse',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS060',
    '1mp22cs060@bgscet.ac.in',
    'Vilas C P',
    4,
    'A',
    19,
    'cse',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS003',
    '1mp22cs003@bgscet.ac.in',
    'Aditya S',
    4,
    'A',
    19,
    'cse',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS039',
    '1mp22cs039@bgscet.ac.in',
    'Rahul S',
    4,
    'A',
    19,
    'cse',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS029',
    '1mp22cs029@bgscet.ac.in',
    'Mahan J Shetty',
    4,
    'A',
    19,
    'cse',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS032',
    '1mp22cs032@bgscet.ac.in',
    'Manushree',
    4,
    'A',
    19,
    'cse',
    'female'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS042',
    '1mp22cs042@bgscet.ac.in',
    'Rakshitha S',
    4,
    'A',
    19,
    'cse',
    'female'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS008',
    '1mp22cs008@bgscet.ac.in',
    'Ankitha B R',
    4,
    'A',
    20,
    'cse',
    'female'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS013',
    '1mp22cs013@bgscet.ac.in',
    'Ayesha M',
    4,
    'A',
    20,
    'cse',
    'female'
)
    SELECT
        *
    FROM
        DUAL;

-- AIML
INSERT ALL INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22AI039',
    '1mp22ai039@bgscet.ac.in',
    'Pramod',
    4,
    'A',
    19,
    'aiml',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22AI049',
    '1mp22ai049@bgscet.ac.in',
    'Harshith M',
    4,
    'A',
    19,
    'aiml',
    'male'
) INTO L2_STUDENTS (
    USN,
    EMAIL_ID,
    STD_NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22AI057',
    '1mp22ai057@bgscet.ac.in',
    'Tejas Krishna',
    4,
    'A',
    19,
    'aiml',
    'male'
)
    SELECT
        *
    FROM
        DUAL;

-- Assigning Subjects To L1_STUDENTS
INSERT ALL INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS031'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS060'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS003'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS039'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS029'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS032'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS042'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS008'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    5,
    '1MP22CS013'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS031'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS060'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS003'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS039'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS029'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS032'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS042'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS008'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    7,
    '1MP22CS013'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS031'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS060'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS003'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS039'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS029'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS032'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS042'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS008'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    8,
    '1MP22CS013'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    6,
    '1MP22AI039'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    6,
    '1MP22AI049'
) INTO L2_STUDENTS_SUBJECTS (
    SUBJECT_ID,
    USN
) VALUES (
    6,
    '1MP22AI057'
)
    SELECT
        *
    FROM
        DUAL;

-- DBMS_01_07
UPDATE L2_SUBJECTS
SET
    TOTAL_CLASS = 7
WHERE
    SUBJECT_ID = 5;

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    1,
    5,
    TO_DATE('07/01/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('01-JUL-24 09:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    2,
    5,
    TO_DATE('07/02/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('02-JUL-24 09:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    3,
    5,
    TO_DATE('07/02/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('02-JUL-24 10:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    4,
    5,
    TO_DATE('07/03/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('03-JUL-24 11:15:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    5,
    5,
    TO_DATE('07/07/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('07-JUL-24 13:15:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    6,
    5,
    TO_DATE('07/08/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('08-JUL-24 09:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    7,
    5,
    TO_DATE('07/09/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('09-JUL-24 10:00:00', 'DD-MON-YY HH24:MI:SS')
);

-- ADA_05
UPDATE L2_SUBJECTS
SET
    TOTAL_CLASS = 5
WHERE
    SUBJECT_ID = 7;

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    1,
    7,
    TO_DATE('07/01/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('01-JUL-24 10:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    2,
    7,
    TO_DATE('07/02/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('02-JUL-24 12:15:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    3,
    7,
    TO_DATE('07/03/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('03-JUL-24 14:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    4,
    7,
    TO_DATE('07/04/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('04-JUL-24 10:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    5,
    7,
    TO_DATE('07/07/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('07-JUL-24 12:15:00', 'DD-MON-YY HH24:MI:SS')
);

-- MC_05
UPDATE L2_SUBJECTS
SET
    TOTAL_CLASS = 5
WHERE
    SUBJECT_ID = 8;

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    1,
    8,
    TO_DATE('07/04/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('04-JUL-24 14:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    2,
    8,
    TO_DATE('07/05/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('05-JUL-24 12:15:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    3,
    8,
    TO_DATE('07/07/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('07-JUL-24 14:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    4,
    8,
    TO_DATE('07/09/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('09-JUL-24 09:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    5,
    8,
    TO_DATE('07/09/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('09-JUL-24 10:00:00', 'DD-MON-YY HH24:MI:SS')
);

-- DBMS_02_03
UPDATE L2_SUBJECTS
SET
    TOTAL_CLASS = 3
WHERE
    SUBJECT_ID = 6;

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    1,
    6,
    TO_DATE('07/04/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('04-JUL-24 09:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    2,
    6,
    TO_DATE('07/05/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('05-JUL-24 10:00:00', 'DD-MON-YY HH24:MI:SS')
);

INSERT INTO L2_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    CLASS_DATE,
    CLASS_TIME
) VALUES (
    3,
    6,
    TO_DATE('07/07/2024', 'MM/DD/YYYY'),
    TO_TIMESTAMP('07-JUL-24 14:00:00', 'DD-MON-YY HH24:MI:SS')
);

-- IA 1 Test
INSERT INTO L2_TESTS (
    TEST_CODE,
    SUBJECT_ID,
    TEST_DATE,
    TEST_TIME,
    TOTAL_MARKS
) VALUES (
    'IA_1',
    'BCS401_01',
    '2024-07-16',
    '09:00:00',
    50
),
(
    'IA_1',
    'BCS402_01',
    '2024-07-16',
    '14:00:00',
    50
),
(
    'IA_1',
    'BCS403_01',
    '2024-07-17',
    '9:00:00',
    50
),
(
    'IA_1',
    'BCS403_02',
    '2024-07-17',
    '9:00:00',
    50
);

-- Attendance
-- DBMS_01
INSERT INTO L2_STUDENTS_ATTEND (
    CLASS_ID,
    USN,
    ATTENDANCE
) VALUES (
    1,
    '1MP22CS031',
    TRUE
),
(
    1,
    '1MP22CS060',
    TRUE
),
(
    1,
    '1MP22CS003',
    TRUE
),
(
    1,
    '1MP22CS039',
    TRUE
),
(
    1,
    '1MP22CS029',
    TRUE
),
(
    1,
    '1MP22CS032',
    TRUE
),
(
    1,
    '1MP22CS042',
    TRUE
),
(
    1,
    '1MP22CS008',
    TRUE
),
(
    1,
    '1MP22CS013',
    TRUE
),
(
    3,
    '1MP22CS031',
    TRUE
),
(
    3,
    '1MP22CS060',
    TRUE
),
(
    3,
    '1MP22CS003',
    TRUE
),
(
    3,
    '1MP22CS039',
    TRUE
),
(
    3,
    '1MP22CS029',
    TRUE
),
(
    3,
    '1MP22CS032',
    TRUE
),
(
    3,
    '1MP22CS042',
    TRUE
),
(
    3,
    '1MP22CS008',
    TRUE
),
(
    3,
    '1MP22CS013',
    TRUE
),
(
    4,
    '1MP22CS031',
    TRUE
),
(
    4,
    '1MP22CS060',
    FALSE
),
(
    4,
    '1MP22CS003',
    TRUE
),
(
    4,
    '1MP22CS039',
    TRUE
),
(
    4,
    '1MP22CS029',
    TRUE
),
(
    4,
    '1MP22CS032',
    FALSE
),
(
    4,
    '1MP22CS042',
    FALSE
),
(
    4,
    '1MP22CS008',
    TRUE
),
(
    4,
    '1MP22CS013',
    TRUE
),
(
    5,
    '1MP22CS031',
    FALSE
),
(
    5,
    '1MP22CS060',
    FALSE
),
(
    5,
    '1MP22CS003',
    FALSE
),
(
    5,
    '1MP22CS039',
    TRUE
),
(
    5,
    '1MP22CS029',
    TRUE
),
(
    5,
    '1MP22CS032',
    FALSE
),
(
    5,
    '1MP22CS042',
    FALSE
),
(
    5,
    '1MP22CS008',
    TRUE
),
(
    5,
    '1MP22CS013',
    FALSE
),
(
    6,
    '1MP22CS031',
    TRUE
),
(
    6,
    '1MP22CS060',
    TRUE
),
(
    6,
    '1MP22CS003',
    FALSE
),
(
    6,
    '1MP22CS039',
    TRUE
),
(
    6,
    '1MP22CS029',
    TRUE
),
(
    6,
    '1MP22CS032',
    TRUE
),
(
    6,
    '1MP22CS042',
    FALSE
),
(
    6,
    '1MP22CS008',
    TRUE
),
(
    6,
    '1MP22CS013',
    TRUE
),
(
    7,
    '1MP22CS031',
    TRUE
),
(
    7,
    '1MP22CS060',
    TRUE
),
(
    7,
    '1MP22CS003',
    TRUE
),
(
    7,
    '1MP22CS039',
    TRUE
),
(
    7,
    '1MP22CS029',
    TRUE
),
(
    7,
    '1MP22CS032',
    TRUE
),
(
    7,
    '1MP22CS042',
    TRUE
),
(
    7,
    '1MP22CS008',
    TRUE
),
(
    7,
    '1MP22CS013',
    TRUE
),
(
    8,
    '1MP22CS031',
    TRUE
),
(
    8,
    '1MP22CS060',
    TRUE
),
(
    8,
    '1MP22CS003',
    TRUE
),
(
    8,
    '1MP22CS039',
    TRUE
),
(
    8,
    '1MP22CS029',
    TRUE
),
(
    8,
    '1MP22CS032',
    TRUE
),
(
    8,
    '1MP22CS042',
    TRUE
),
(
    8,
    '1MP22CS008',
    TRUE
),
(
    8,
    '1MP22CS013',
    TRUE
);

-- MC_01
INSERT INTO L2_STUDENTS_ATTEND (
    CLASS_ID,
    USN,
    ATTENDANCE
) VALUES (
    14,
    '1MP22CS031',
    TRUE
),
(
    14,
    '1MP22CS060',
    TRUE
),
(
    14,
    '1MP22CS003',
    TRUE
),
(
    14,
    '1MP22CS039',
    TRUE
),
(
    14,
    '1MP22CS029',
    TRUE
),
(
    14,
    '1MP22CS032',
    TRUE
),
(
    14,
    '1MP22CS042',
    TRUE
),
(
    14,
    '1MP22CS008',
    TRUE
),
(
    14,
    '1MP22CS013',
    TRUE
),
(
    15,
    '1MP22CS031',
    FALSE
),
(
    15,
    '1MP22CS060',
    TRUE
),
(
    15,
    '1MP22CS003',
    FALSE
),
(
    15,
    '1MP22CS039',
    TRUE
),
(
    15,
    '1MP22CS029',
    TRUE
),
(
    15,
    '1MP22CS032',
    TRUE
),
(
    15,
    '1MP22CS042',
    FALSE
),
(
    15,
    '1MP22CS008',
    TRUE
),
(
    15,
    '1MP22CS013',
    TRUE
),
(
    16,
    '1MP22CS031',
    TRUE
),
(
    16,
    '1MP22CS060',
    FALSE
),
(
    16,
    '1MP22CS003',
    TRUE
),
(
    16,
    '1MP22CS039',
    TRUE
),
(
    16,
    '1MP22CS029',
    TRUE
),
(
    16,
    '1MP22CS032',
    FALSE
),
(
    16,
    '1MP22CS042',
    FALSE
),
(
    16,
    '1MP22CS008',
    TRUE
),
(
    16,
    '1MP22CS013',
    TRUE
),
(
    17,
    '1MP22CS031',
    TRUE
),
(
    17,
    '1MP22CS060',
    FALSE
),
(
    17,
    '1MP22CS003',
    FALSE
),
(
    17,
    '1MP22CS039',
    TRUE
),
(
    17,
    '1MP22CS029',
    TRUE
),
(
    17,
    '1MP22CS032',
    FALSE
),
(
    17,
    '1MP22CS042',
    FALSE
),
(
    17,
    '1MP22CS008',
    TRUE
),
(
    17,
    '1MP22CS013',
    FALSE
),
(
    18,
    '1MP22CS031',
    TRUE
),
(
    18,
    '1MP22CS060',
    TRUE
),
(
    18,
    '1MP22CS003',
    FALSE
),
(
    18,
    '1MP22CS039',
    TRUE
),
(
    18,
    '1MP22CS029',
    TRUE
),
(
    18,
    '1MP22CS032',
    TRUE
),
(
    18,
    '1MP22CS042',
    FALSE
),
(
    18,
    '1MP22CS008',
    TRUE
),
(
    18,
    '1MP22CS013',
    TRUE
);

-- ADA_01
INSERT INTO L2_STUDENTS_ATTEND (
    CLASS_ID,
    USN,
    ATTENDANCE
) VALUES (
    9,
    '1MP22CS031',
    TRUE
),
(
    9,
    '1MP22CS060',
    FALSE
),
(
    9,
    '1MP22CS003',
    TRUE
),
(
    9,
    '1MP22CS039',
    TRUE
),
(
    9,
    '1MP22CS029',
    TRUE
),
(
    9,
    '1MP22CS032',
    FALSE
),
(
    9,
    '1MP22CS042',
    TRUE
),
(
    9,
    '1MP22CS008',
    TRUE
),
(
    9,
    '1MP22CS013',
    TRUE
),
(
    10,
    '1MP22CS031',
    FALSE
),
(
    10,
    '1MP22CS060',
    TRUE
),
(
    10,
    '1MP22CS003',
    FALSE
),
(
    10,
    '1MP22CS039',
    TRUE
),
(
    10,
    '1MP22CS029',
    TRUE
),
(
    10,
    '1MP22CS032',
    TRUE
),
(
    10,
    '1MP22CS042',
    FALSE
),
(
    10,
    '1MP22CS008',
    TRUE
),
(
    10,
    '1MP22CS013',
    TRUE
),
(
    11,
    '1MP22CS031',
    TRUE
),
(
    11,
    '1MP22CS060',
    FALSE
),
(
    11,
    '1MP22CS003',
    FALSE
),
(
    11,
    '1MP22CS039',
    TRUE
),
(
    11,
    '1MP22CS029',
    TRUE
),
(
    11,
    '1MP22CS032',
    FALSE
),
(
    11,
    '1MP22CS042',
    FALSE
),
(
    11,
    '1MP22CS008',
    TRUE
),
(
    11,
    '1MP22CS013',
    TRUE
),
(
    12,
    '1MP22CS031',
    TRUE
),
(
    12,
    '1MP22CS060',
    FALSE
),
(
    12,
    '1MP22CS003',
    FALSE
),
(
    12,
    '1MP22CS039',
    TRUE
),
(
    12,
    '1MP22CS029',
    TRUE
),
(
    12,
    '1MP22CS032',
    FALSE
),
(
    12,
    '1MP22CS042',
    FALSE
),
(
    12,
    '1MP22CS008',
    TRUE
),
(
    12,
    '1MP22CS013',
    FALSE
),
(
    13,
    '1MP22CS031',
    TRUE
),
(
    13,
    '1MP22CS060',
    TRUE
),
(
    13,
    '1MP22CS003',
    TRUE
),
(
    13,
    '1MP22CS039',
    TRUE
),
(
    13,
    '1MP22CS029',
    TRUE
),
(
    13,
    '1MP22CS032',
    TRUE
),
(
    13,
    '1MP22CS042',
    FALSE
),
(
    13,
    '1MP22CS008',
    TRUE
),
(
    13,
    '1MP22CS013',
    TRUE
);

-- DBMS_02
INSERT INTO L2_STUDENTS_ATTEND (
    CLASS_ID,
    USN,
    ATTENDANCE
) VALUES (
    20,
    '1MP22AI039',
    TRUE
),
(
    20,
    '1MP22AI049',
    TRUE
),
(
    20,
    '1MP22AI059',
    TRUE
),
(
    21,
    '1MP22AI039',
    TRUE
),
(
    21,
    '1MP22AI049',
    FALSE
),
(
    21,
    '1MP22AI059',
    TRUE
),
(
    22,
    '1MP22AI039',
    FALSE
),
(
    22,
    '1MP22AI049',
    TRUE
),
(
    22,
    '1MP22AI059',
    TRUE
);

-- IA_1 Test Marks
-- IA_1 FOR ADA_01
INSERT INTO L2_STUDENTS_MARKS (
    TEST_ID,
    USN,
    MARKS
) VALUES (
    1,
    '1MP22CS031',
    47
),
(
    1,
    '1MP22CS060',
    48
),
(
    1,
    '1MP22CS003',
    49
),
(
    1,
    '1MP22CS039',
    43
),
(
    1,
    '1MP22CS029',
    47
),
(
    1,
    '1MP22CS032',
    50
),
(
    1,
    '1MP22CS042',
    50
),
(
    1,
    '1MP22CS008',
    49
),
(
    1,
    '1MP22CS013',
    50
);

-- IA_1 FOR MC_01
INSERT INTO L2_STUDENTS_MARKS (
    TEST_ID,
    USN,
    MARKS
) VALUES (
    2,
    '1MP22CS031',
    44
),
(
    2,
    '1MP22CS060',
    43
),
(
    2,
    '1MP22CS003',
    46
),
(
    2,
    '1MP22CS039',
    47
),
(
    2,
    '1MP22CS029',
    50
),
(
    2,
    '1MP22CS032',
    47
),
(
    2,
    '1MP22CS042',
    43
),
(
    2,
    '1MP22CS008',
    50
),
(
    2,
    '1MP22CS013',
    50
);

-- IA_1 FOR DBMS_01
INSERT INTO L2_STUDENTS_MARKS (
    TEST_ID,
    USN,
    MARKS
) VALUES (
    3,
    '1MP22CS031',
    46
),
(
    3,
    '1MP22CS060',
    47
),
(
    3,
    '1MP22CS003',
    48
),
(
    3,
    '1MP22CS039',
    49
),
(
    3,
    '1MP22CS029',
    50
),
(
    3,
    '1MP22CS032',
    50
),
(
    3,
    '1MP22CS042',
    47
),
(
    3,
    '1MP22CS008',
    46
),
(
    3,
    '1MP22CS013',
    57
);

-- IA_1 FOR DBMS_02
INSERT INTO L2_STUDENTS_MARKS (
    TEST_ID,
    USN,
    MARKS
) VALUES (
    4,
    '1MP22AI039',
    47
),
(
    4,
    '1MP22AI049',
    49
),
(
    4,
    '1MP22AI059',
    50
);

-- Announcements
SET
TIMEZONE = 'Asia/Calcutta';

INSERT INTO L2_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'cse',
    'Submit your DBMS record before the deadline - 31st July, 2024!'
);

INSERT INTO L2_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'cse',
    'Submit your ADA assignment before the deadline - 27th July, 2024!'
);

INSERT INTO L2_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'aiml',
    'Everyone should give a PPT Presentation on their DBMS project on 25th July, 2024!'
);

INSERT INTO L2_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'all',
    'Everyone should attend Technical Fest - "Nano Coders" on 23th July, 2024, without Fail!'
);

-- Map Email Id To Usn
INSERT INTO L2_EMAIL_TO_USN (
    EMAIL_ID,
    USN
) VALUES (
    '1mp22cs031@usi.ac.in',
    '1MP22CS031'
),
(
    '1mp22cs060@usi.ac.in',
    '1MP22CS060'
),
(
    '1mp22cs003@usi.ac.in',
    '1MP22CS003'
),
(
    '1mp22cs039@usi.ac.in',
    '1MP22CS039'
),
(
    '1mp22cs029@usi.ac.in',
    '1MP22CS029'
),
(
    '1mp22cs032@usi.ac.in',
    '1MP22CS032'
),
(
    '1mp22cs042@usi.ac.in',
    '1MP22CS042'
),
(
    '1mp22cs008@usi.ac.in',
    '1MP22CS008'
),
(
    '1mp22cs013@usi.ac.in',
    '1MP22CS013'
),
(
    '1mp22ai039@usi.ac.in',
    '1MP22AI039'
),
(
    '1mp22ai049@usi.ac.in',
    '1MP22AI049'
),
(
    '1mp22ai059@usi.ac.in',
    '1MP22AI059'
);