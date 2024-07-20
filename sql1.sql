CREATE TABLE
    IF NOT EXISTS L1_BRANCH (
        branch_id VARCHAR(20) NOT NULL PRIMARY KEY,
        branch_name VARCHAR(50) NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS L1_TEACHERS (
        branch_id VARCHAR(20) NOT NULL,
        t_id VARCHAR(30) NOT NULL PRIMARY KEY,
        t_name VARCHAR(50) NOT NULL,
        t_age INT NOT NULL,
        t_role VARCHAR(50) NOT NULL,
        CONSTRAINT fk_branch_id_teachers FOREIGN KEY (branch_id) REFERENCES L1_BRANCH (branch_id)
    );

CREATE TABLE
    IF NOT EXISTS L1_SUBJECT_DETAILS (
        subject_code VARCHAR(20) NOT NULL PRIMARY KEY,
        subject_name VARCHAR(50) NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS L1_SUBJECTS (
        subject_id VARCHAR(20) NOT NULL PRIMARY KEY,
        branch_id VARCHAR(20) NOT NULL,
        subject_code VARCHAR(20) NOT NULL,
        t_incharge_id VARCHAR(30) NOT NULL,
        total_class INT NOT NULL DEFAULT 0,
        CONSTRAINT fk_branch_id_subjects FOREIGN KEY (branch_id) REFERENCES L1_BRANCH (branch_id),
        CONSTRAINT fk_t_incharge_id_subjects FOREIGN KEY (t_incharge_id) REFERENCES L1_TEACHERS (t_id),
        CONSTRAINT fk_subject_code_subjects FOREIGN KEY (subject_code) REFERENCES L1_SUBJECT_DETAILS (subject_code),
        UNIQUE (branch_id, t_incharge_id, subject_code)
    );

CREATE TABLE
    IF NOT EXISTS L1_STUDENTS (
        usn VARCHAR(30) NOT NULL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        sem INT NOT NULL,
        section VARCHAR(5) NOT NULL,
        age INT NOT NULL,
        branch_id VARCHAR(20) NOT NULL,
        gender VARCHAR(10) NOT NULL,
        father_name VARCHAR(50),
        mother_name VARCHAR(50),
        address VARCHAR(100),
        CONSTRAINT fk_branch_id_students FOREIGN KEY (branch_id) REFERENCES L1_BRANCH (branch_id)
    );

-- Can add extra column like phone_no, DOB etc.
CREATE TABLE
    IF NOT EXISTS L1_EMAIL_TO_USN (
        email_id VARCHAR(50) NOT NULL PRIMARY KEY,
        usn VARCHAR(30) NOT NULL,
        CONSTRAINT fk_usn_email FOREIGN KEY (usn) REFERENCES L1_STUDENTS (usn)
    );

CREATE TABLE
    IF NOT EXISTS L1_CLASSES (
        class_id SERIAL PRIMARY KEY,
        class_no INT NOT NULL,
        subject_id VARCHAR(20) NOT NULL,
        date DATE NOT NULL,
        time TIME NOT NULL,
        CONSTRAINT fk_subject_id_attend FOREIGN KEY (subject_id) REFERENCES L1_SUBJECTS (subject_id),
        UNIQUE (class_no, subject_id),
        UNIQUE (subject_id, date, time)
    );

CREATE TABLE
    IF NOT EXISTS L1_STUDENTS_ATTEND (
        class_id INT NOT NULL,
        usn VARCHAR(30) NOT NULL,
        attendance BOOLEAN NOT NULL,
        CONSTRAINT fk_usn_attend FOREIGN KEY (usn) REFERENCES L1_STUDENTS (usn),
        CONSTRAINT fk_class_id_attend FOREIGN KEY (class_id) REFERENCES L1_CLASSES (class_id),
        PRIMARY KEY (class_id, usn)
    );

CREATE TABLE
    IF NOT EXISTS L1_TESTS (
        test_id SERIAL PRIMARY KEY,
        test_code VARCHAR(20) NOT NULL,
        subject_id VARCHAR(20) NOT NULL,
        date DATE NOT NULL,
        time TIME NOT NULL,
        total_marks NUMERIC(10, 2) NOT NULL DEFAULT 0,
        CONSTRAINT fk_subject_id_tests FOREIGN KEY (subject_id) REFERENCES L1_SUBJECTS (subject_id),
        UNIQUE (test_code, subject_id),
        UNIQUE (subject_id, date, time)
    );

CREATE TABLE
    IF NOT EXISTS L1_STUDENTS_MARKS (
        test_id INT,
        usn VARCHAR(30) NOT NULL,
        marks NUMERIC(10, 2) NOT NULL,
        CONSTRAINT fk_usn_marks FOREIGN KEY (usn) REFERENCES L1_STUDENTS (usn),
        CONSTRAINT fk_test_id_marks FOREIGN KEY (test_id) REFERENCES L1_TESTS (test_id),
        PRIMARY KEY (test_id, usn)
    );

CREATE TABLE
    IF NOT EXISTS L1_ANNOUNCEMENT (
        announcement_id SERIAL PRIMARY KEY,
        branch_id VARCHAR(20) NOT NULL DEFAULT 'all',
        announcement_message TEXT NOT NULL,
        date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
        time TIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT fk_branch_id_announcement FOREIGN KEY (branch_id) REFERENCES L1_BRANCH (branch_id)
    );