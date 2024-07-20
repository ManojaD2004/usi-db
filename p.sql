SELECT
    SA.class_id,
    SA.usn,
    SA.attendance,
    LC.class_no,
    LC.subject_id,
    LC.date,
    LC.time,
    LS.subject_code,
    LSD.subject_name
FROM
    L1_STUDENTS_ATTEND SA
    LEFT JOIN L1_CLASSES LC ON SA.class_id = LC.class_id
    LEFT JOIN L1_SUBJECTS LS ON LS.subject_id = LC.subject_id
    LEFT JOIN L1_SUBJECT_DETAILS LSD ON LS.subject_code = LSD.subject_code
WHERE
    SA.usn = '1MP22CS031'
ORDER BY
    LC.subject_id,
    LC.class_no;