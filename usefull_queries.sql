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
        CAST(COUNT(*) AS NUMERIC) / (
            SELECT
                CAST(total_class AS NUMERIC)
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

SELECT
    COUNT(SM.test_id),
    SUM(SM.marks),
    S.usn,
    S.branch_id
FROM
    L1_STUDENTS_MARKS AS SM
    LEFT JOIN L1_STUDENTS AS S ON SM.usn = S.usn
GROUP BY
    S.usn
ORDER BY
    sum DESC;