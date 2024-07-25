SELECT
    *
FROM
    L2_STUDENTS_ATTEND AS A
    LEFT JOIN L2_CLASSES AS C
    ON A.CLASS_ID = C.CLASS_ID
WHERE
    A.USN = '1MP22CS031'
    AND C.SUBJECT_ID = 'BCS403_01'
    AND A.ATTENDANCE = TRUE;

SELECT
    ( CAST(COUNT(*) AS NUMERIC) / (
        SELECT
            CAST(TOTAL_CLASS AS NUMERIC)
        FROM
            L2_SUBJECTS
        WHERE
            SUBJECT_ID = 'BCS403_01'
    ) ) * 100
FROM
    L2_STUDENTS_ATTEND AS A
    LEFT JOIN L2_CLASSES AS C
    ON A.CLASS_ID = C.CLASS_ID
WHERE
    A.USN = '1MP22CS031'
    AND C.SUBJECT_ID = 'BCS403_01'
    AND A.ATTENDANCE = TRUE;

SELECT
    COUNT(SM.TEST_ID),
    SUM(SM.MARKS),
    S.USN,
    S.BRANCH_ID,
    S.NAME
FROM
    L2_STUDENTS_MARKS AS SM
    LEFT JOIN L2_STUDENTS AS S
    ON SM.USN = S.USN
GROUP BY
    S.USN
ORDER BY
    SUM DESC;