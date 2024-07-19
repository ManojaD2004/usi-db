SELECT
    *
FROM
    L1_STUDENTS_ATTEND AS A
    LEFT JOIN L1_CLASSES AS C ON A.class_id = C.class_id
WHERE
    A.usn = '1MP22CS031'
    AND C.subject_id = 'BCS403_01'
    AND A.attendance = TRUE;

SELECT
    (
        CAST(COUNT(*) as NUMERIC) / (
            SELECT
                CAST(total_class as NUMERIC)
            FROM
                L1_SUBJECTS
            WHERE
                subject_id = 'BCS403_01'
        )
    ) * 100
FROM
    L1_STUDENTS_ATTEND AS A
    LEFT JOIN L1_CLASSES AS C ON A.class_id = C.class_id
WHERE
    A.usn = '1MP22CS031'
    AND C.subject_id = 'BCS403_01'
    AND A.attendance = TRUE;