SET
    timezone = 'Asia/Calcutta';

INSERT INTO
    L1_BRANCH (branch_id, branch_name)
VALUES
    ('all', 'Whole College'),
    ('cse', 'Computer Science and Engineering'),
    (
        'aiml',
        'Artificial intelligence and Machine Learning'
    ),
    ('csd', 'Computer Science and Design');

INSERT INTO
    L1_TEACHERS (branch_id, t_id, t_name, t_age, t_role)
VALUES
    (
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

INSERT INTO
    L1_SUBJECT_DETAILS (subject_code, subject_name)
VALUES
    ('BCS403', 'Database Management System'),
    ('BCS402', 'Micro Controllers'),
    ('BCS401', 'Analysis & Design of Algorithms');

INSERT INTO
    L1_SUBJECTS (
        subject_id,
        branch_id,
        subject_code,
        t_incharge_id
    )
VALUES
    ('BCS403_01', 'cse', 'BCS403', 'T1002'),
    ('BCS403_02', 'aiml', 'BCS403', 'T1004'),
    ('BCS401_01', 'cse', 'BCS401', 'T1003'),
    ('BCS402_01', 'cse', 'BCS402', 'T1005');

-- CSE
INSERT INTO
    L1_STUDENTS (usn, name, sem, section, age, branch_id, gender)
VALUES
    (
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
INSERT INTO
    L1_STUDENTS (usn, name, sem, section, age, branch_id, gender)
VALUES
    (
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
    total_class = 7
WHERE
    subject_id = 'BCS403_01';

INSERT INTO
    L1_CLASSES (class_no, subject_id, date, time)
VALUES
    (1, 'BCS403_01', '2024-07-01', '09:00:00'),
    (2, 'BCS403_01', '2024-07-02', '09:00:00'),
    (3, 'BCS403_01', '2024-07-02', '10:00:00'),
    (4, 'BCS403_01', '2024-07-03', '11:15:00'),
    (5, 'BCS403_01', '2024-07-07', '13:15:00'),
    (6, 'BCS403_01', '2024-07-08', '09:00:00'),
    (7, 'BCS403_01', '2024-07-09', '10:00:00');

-- ADA_05
UPDATE L1_SUBJECTS
SET
    total_class = 5
WHERE
    subject_id = 'BCS401_01';

INSERT INTO
    L1_CLASSES (class_no, subject_id, date, time)
VALUES
    (1, 'BCS401_01', '2024-07-01', '10:00:00'),
    (2, 'BCS401_01', '2024-07-02', '12:15:00'),
    (3, 'BCS401_01', '2024-07-03', '14:00:00'),
    (4, 'BCS401_01', '2024-07-04', '10:00:00'),
    (5, 'BCS401_01', '2024-07-07', '12:15:00');

-- MC_05 
UPDATE L1_SUBJECTS
SET
    total_class = 5
WHERE
    subject_id = 'BCS402_01';

INSERT INTO
    L1_CLASSES (class_no, subject_id, date, time)
VALUES
    (1, 'BCS402_01', '2024-07-04', '14:00:00'),
    (2, 'BCS402_01', '2024-07-05', '12:15:00'),
    (3, 'BCS402_01', '2024-07-07', '14:00:00'),
    (4, 'BCS402_01', '2024-07-09', '09:00:00'),
    (5, 'BCS402_01', '2024-07-09', '10:00:00');

-- DBMS_02_03
UPDATE L1_SUBJECTS
SET
    total_class = 3
WHERE
    subject_id = 'BCS403_02';

INSERT INTO
    L1_CLASSES (class_no, subject_id, date, time)
VALUES
    (1, 'BCS403_02', '2024-07-04', '09:00:00'),
    (2, 'BCS403_02', '2024-07-05', '10:00:00'),
    (3, 'BCS403_02', '2024-07-07', '14:00:00');

-- IA 1 Test
INSERT INTO
    L1_TESTS (test_code, subject_id, date, time, total_marks)
VALUES
    ('IA_1', 'BCS401_01', '2024-07-16', '09:00:00', 50),
    ('IA_1', 'BCS402_01', '2024-07-16', '14:00:00', 50),
    ('IA_1', 'BCS403_01', '2024-07-17', '9:00:00', 50),
    ('IA_1', 'BCS403_02', '2024-07-17', '9:00:00', 50);

-- Attendance
CREATE TABLE
    IF NOT EXISTS L1_STUDENTS_ATTEND (
        class_id INT NOT NULL,
        usn VARCHAR(30) NOT NULL,
        attendance BOOLEAN NOT NULL,
        CONSTRAINT fk_usn_attend FOREIGN KEY (usn) REFERENCES L1_STUDENTS (usn),
        CONSTRAINT fk_class_id_attend FOREIGN KEY (class_id) REFERENCES L1_CLASSES (class_id),
        PRIMARY KEY (class_id, usn)
    );

-- DBMS_01
INSERT INTO
    L1_STUDENTS_ATTEND (class_id, usn, attendance)
VALUES
    (1, '1MP22CS031', TRUE),
    (1, '1MP22CS060', TRUE),
    (1, '1MP22CS003', TRUE),
    (1, '1MP22CS039', TRUE),
    (1, '1MP22CS029', TRUE),
    (1, '1MP22CS032', TRUE),
    (1, '1MP22CS042', TRUE),
    (1, '1MP22CS008', TRUE),
    (1, '1MP22CS013', TRUE),
    (3, '1MP22CS031', TRUE),
    (3, '1MP22CS060', TRUE),
    (3, '1MP22CS003', TRUE),
    (3, '1MP22CS039', TRUE),
    (3, '1MP22CS029', TRUE),
    (3, '1MP22CS032', TRUE),
    (3, '1MP22CS042', TRUE),
    (3, '1MP22CS008', TRUE),
    (3, '1MP22CS013', TRUE),
    (4, '1MP22CS031', TRUE),
    (4, '1MP22CS060', FALSE),
    (4, '1MP22CS003', TRUE),
    (4, '1MP22CS039', TRUE),
    (4, '1MP22CS029', TRUE),
    (4, '1MP22CS032', FALSE),
    (4, '1MP22CS042', FALSE),
    (4, '1MP22CS008', TRUE),
    (4, '1MP22CS013', TRUE),
    (5, '1MP22CS031', FALSE),
    (5, '1MP22CS060', FALSE),
    (5, '1MP22CS003', FALSE),
    (5, '1MP22CS039', TRUE),
    (5, '1MP22CS029', TRUE),
    (5, '1MP22CS032', FALSE),
    (5, '1MP22CS042', FALSE),
    (5, '1MP22CS008', TRUE),
    (5, '1MP22CS013', FALSE),
    (6, '1MP22CS031', TRUE),
    (6, '1MP22CS060', TRUE),
    (6, '1MP22CS003', FALSE),
    (6, '1MP22CS039', TRUE),
    (6, '1MP22CS029', TRUE),
    (6, '1MP22CS032', TRUE),
    (6, '1MP22CS042', FALSE),
    (6, '1MP22CS008', TRUE),
    (6, '1MP22CS013', TRUE),
    (7, '1MP22CS031', TRUE),
    (7, '1MP22CS060', TRUE),
    (7, '1MP22CS003', TRUE),
    (7, '1MP22CS039', TRUE),
    (7, '1MP22CS029', TRUE),
    (7, '1MP22CS032', TRUE),
    (7, '1MP22CS042', TRUE),
    (7, '1MP22CS008', TRUE),
    (7, '1MP22CS013', TRUE),
    (8, '1MP22CS031', TRUE),
    (8, '1MP22CS060', TRUE),
    (8, '1MP22CS003', TRUE),
    (8, '1MP22CS039', TRUE),
    (8, '1MP22CS029', TRUE),
    (8, '1MP22CS032', TRUE),
    (8, '1MP22CS042', TRUE),
    (8, '1MP22CS008', TRUE),
    (8, '1MP22CS013', TRUE);