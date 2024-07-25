SET
TIMEZONE = 'Asia/Calcutta';

INSERT INTO L1_BRANCH (
    BRANCH_ID,
    BRANCH_NAME
) VALUES (
    'all',
    'Whole College'
),
(
    'cse',
    'Computer Science and Engineering'
),
(
    'aiml',
    'Artificial intelligence and Machine Learning'
),
(
    'csd',
    'Computer Science and Design'
);

INSERT INTO L1_TEACHERS (
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
),
(
    'cse',
    'T1002',
    'Dr. Manjula G',
    45,
    'Associate Professor & Head'
),
(
    'cse',
    'T1003',
    'Mr. SATHISHA G',
    40,
    'Associate Professor'
),
(
    'aiml',
    'T1004',
    'Dr. Jalaja G',
    47,
    'Professor & Head'
),
(
    'csd',
    'T1005',
    'Dr. Madhu Patil',
    49,
    'Professor & Head'
);

INSERT INTO L1_SUBJECT_DETAILS (
    SUBJECT_CODE,
    SUBJECT_NAME
) VALUES (
    'BCS403',
    'Database Management System'
),
(
    'BCS402',
    'Micro Controllers'
),
(
    'BCS401',
    'Analysis & Design of Algorithms'
);

INSERT INTO L1_SUBJECTS (
    SUBJECT_ID,
    BRANCH_ID,
    SUBJECT_CODE,
    T_INCHARGE_ID
) VALUES (
    'BCS403_01',
    'cse',
    'BCS403',
    'T1002'
),
(
    'BCS403_02',
    'aiml',
    'BCS403',
    'T1004'
),
(
    'BCS401_01',
    'cse',
    'BCS401',
    'T1003'
),
(
    'BCS402_01',
    'cse',
    'BCS402',
    'T1005'
);

-- CSE
INSERT INTO L1_STUDENTS (
    USN,
    NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22CS031',
    'Manoja D',
    4,
    'A',
    19,
    'cse',
    'male'
),
(
    '1MP22CS060',
    'Vilas C P',
    4,
    'A',
    19,
    'cse',
    'male'
),
(
    '1MP22CS003',
    'Aditya S',
    4,
    'A',
    19,
    'cse',
    'male'
),
(
    '1MP22CS039',
    'Rahul S',
    4,
    'A',
    19,
    'cse',
    'male'
),
(
    '1MP22CS029',
    'Mahan J Shetty',
    4,
    'A',
    19,
    'cse',
    'male'
),
(
    '1MP22CS032',
    'Manushree',
    4,
    'A',
    19,
    'cse',
    'female'
),
(
    '1MP22CS042',
    'Rakshitha S',
    4,
    'A',
    19,
    'cse',
    'female'
),
(
    '1MP22CS008',
    'Ankitha B R',
    4,
    'A',
    20,
    'cse',
    'female'
),
(
    '1MP22CS013',
    'Ayesha M',
    4,
    'A',
    20,
    'cse',
    'female'
);

-- AIML
INSERT INTO L1_STUDENTS (
    USN,
    NAME,
    SEM,
    SECTION,
    AGE,
    BRANCH_ID,
    GENDER
) VALUES (
    '1MP22AI039',
    'Pramod',
    4,
    'A',
    19,
    'aiml',
    'male'
),
(
    '1MP22AI049',
    'Harshith M',
    4,
    'A',
    19,
    'aiml',
    'male'
),
(
    '1MP22AI059',
    'Tejas Krishna',
    4,
    'A',
    19,
    'aiml',
    'male'
);

-- DBMS_01_07
UPDATE L1_SUBJECTS
SET
    TOTAL_CLASS = 7
WHERE
    SUBJECT_ID = 'BCS403_01';

INSERT INTO L1_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    DATE,
    TIME
) VALUES (
    1,
    'BCS403_01',
    '2024-07-01',
    '09:00:00'
),
(
    2,
    'BCS403_01',
    '2024-07-02',
    '09:00:00'
),
(
    3,
    'BCS403_01',
    '2024-07-02',
    '10:00:00'
),
(
    4,
    'BCS403_01',
    '2024-07-03',
    '11:15:00'
),
(
    5,
    'BCS403_01',
    '2024-07-07',
    '13:15:00'
),
(
    6,
    'BCS403_01',
    '2024-07-08',
    '09:00:00'
),
(
    7,
    'BCS403_01',
    '2024-07-09',
    '10:00:00'
);

-- ADA_05
UPDATE L1_SUBJECTS
SET
    TOTAL_CLASS = 5
WHERE
    SUBJECT_ID = 'BCS401_01';

INSERT INTO L1_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    DATE,
    TIME
) VALUES (
    1,
    'BCS401_01',
    '2024-07-01',
    '10:00:00'
),
(
    2,
    'BCS401_01',
    '2024-07-02',
    '12:15:00'
),
(
    3,
    'BCS401_01',
    '2024-07-03',
    '14:00:00'
),
(
    4,
    'BCS401_01',
    '2024-07-04',
    '10:00:00'
),
(
    5,
    'BCS401_01',
    '2024-07-07',
    '12:15:00'
);

-- MC_05
UPDATE L1_SUBJECTS
SET
    TOTAL_CLASS = 5
WHERE
    SUBJECT_ID = 'BCS402_01';

INSERT INTO L1_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    DATE,
    TIME
) VALUES (
    1,
    'BCS402_01',
    '2024-07-04',
    '14:00:00'
),
(
    2,
    'BCS402_01',
    '2024-07-05',
    '12:15:00'
),
(
    3,
    'BCS402_01',
    '2024-07-07',
    '14:00:00'
),
(
    4,
    'BCS402_01',
    '2024-07-09',
    '09:00:00'
),
(
    5,
    'BCS402_01',
    '2024-07-09',
    '10:00:00'
);

-- DBMS_02_03
UPDATE L1_SUBJECTS
SET
    TOTAL_CLASS = 3
WHERE
    SUBJECT_ID = 'BCS403_02';

INSERT INTO L1_CLASSES (
    CLASS_NO,
    SUBJECT_ID,
    DATE,
    TIME
) VALUES (
    1,
    'BCS403_02',
    '2024-07-04',
    '09:00:00'
),
(
    2,
    'BCS403_02',
    '2024-07-05',
    '10:00:00'
),
(
    3,
    'BCS403_02',
    '2024-07-07',
    '14:00:00'
);

-- IA 1 Test
INSERT INTO L1_TESTS (
    TEST_CODE,
    SUBJECT_ID,
    DATE,
    TIME,
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
INSERT INTO L1_STUDENTS_ATTEND (
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
INSERT INTO L1_STUDENTS_ATTEND (
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
INSERT INTO L1_STUDENTS_ATTEND (
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
INSERT INTO L1_STUDENTS_ATTEND (
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
INSERT INTO L1_STUDENTS_MARKS (
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
INSERT INTO L1_STUDENTS_MARKS (
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
INSERT INTO L1_STUDENTS_MARKS (
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
INSERT INTO L1_STUDENTS_MARKS (
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

INSERT INTO L1_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'cse',
    'Submit your DBMS record before the deadline - 31st July, 2024!'
);

INSERT INTO L1_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'cse',
    'Submit your ADA assignment before the deadline - 27th July, 2024!'
);

INSERT INTO L1_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'aiml',
    'Everyone should give a PPT Presentation on their DBMS project on 25th July, 2024!'
);

INSERT INTO L1_ANNOUNCEMENT (
    BRANCH_ID,
    ANNOUNCEMENT_MESSAGE
) VALUES (
    'all',
    'Everyone should attend Technical Fest - "Nano Coders" on 23th July, 2024, without Fail!'
);

-- Map Email Id To Usn
INSERT INTO L1_EMAIL_TO_USN (
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