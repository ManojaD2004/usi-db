SELECT
    SA.CLASS_ID,
    SA.USN,
    SA.ATTENDANCE,
    LC.CLASS_NO,
    LC.SUBJECT_ID,
    LC.DATE_CLASS,
    TO_CHAR (LC.TIME_CLASS, 'DAY HH24:MI:SS') AS TIME_CLASS,
    LS.SUBJECT_CODE,
    LSD.SUBJECT_NAME
FROM
    L2_STUDENTS_ATTEND SA
    LEFT JOIN L2_CLASSES LC
    ON SA.CLASS_ID = LC.CLASS_ID
    LEFT JOIN L2_SUBJECTS LS
    ON LS.SUBJECT_ID = LC.SUBJECT_ID
    LEFT JOIN L2_SUBJECT_DETAILS LSD
    ON LS.SUBJECT_CODE = LSD.SUBJECT_CODE
WHERE
    SA.USN = (
        SELECT
            USN
        FROM
            L2_EMAIL_TO_USN
        WHERE
            EMAIL_ID = 'manojadkc2004@gmail.com'
    )
ORDER BY
    LC.SUBJECT_ID,
    LC.CLASS_NO;

SELECT
    "SUBJECT_ID",
    NULL            LINK_CLASS,
    APEX_PAGE.GET_URL(
        P_ITEMS => 'P2_SUBJECT_ID',
        P_VALUES => "SUBJECT_ID"
    )               LINK,
    NULL            ICON_CLASS,
    NULL            LINK_ATTR,
    NULL            ICON_COLOR_CLASS,
    CASE
        WHEN COALESCE(:P2_SUBJECT_ID, '0') = "SUBJECT_ID"
        THEN
            'is-active'
        ELSE
            ' '
    END             LIST_CLASS,
    (SUBSTR(X."SUBJECT_CODE", 1, 50)
     ||(
        CASE
            WHEN LENGTH(X."SUBJECT_CODE") > 50 THEN
                '...'
            ELSE
                ''
        END ))      LIST_TITLE,
    (SUBSTR(X."SUBJECT_ID", 1, 50)
     ||(
        CASE
            WHEN LENGTH(X."SUBJECT_ID") > 50 THEN
                '...'
            ELSE
                ''
        END ))      LIST_TEXT,
    XD.SUBJECT_NAME,
    NULL            LIST_BADGE
FROM
    "L2_SUBJECTS"      X
    LEFT JOIN L2_SUBJECT_DETAILS XD
    ON XD.SUBJECT_CODE = X.SUBJECT_CODE
WHERE
    (:P2_SEARCH IS NULL
    OR UPPER(X."SUBJECT_CODE") LIKE '%'
                                    ||UPPER(:P2_SEARCH)
                                    ||'%'
    OR UPPER(X."SUBJECT_ID") LIKE '%'
                                  ||UPPER(:P2_SEARCH)
                                  ||'%' )
    AND X.BRANCH_ID = (
        SELECT
            SS.BRANCH_ID
        FROM
            L2_STUDENTS SS
        WHERE
            SS.USN = (
                SELECT
                    USN
                FROM
                    L2_EMAIL_TO_USN
                WHERE
                    EMAIL_ID = LOWER('manojadkc2004@gmail.com')
            )
    )
ORDER BY
    X."SUBJECT_CODE";

SELECT
    X.SUBJECT_ID,
    UPPER(X.BRANCH_ID) AS BRANCH_ID,
    B.BRANCH_NAME,
    X.SUBJECT_CODE,
    X.T_INCHARGE_ID,
    X.TOTAL_CLASS,
    T.T_NAME,
    T.T_ROLE
FROM
    L2_SUBJECTS        X
    LEFT JOIN L2_TEACHERS T
    ON X.T_INCHARGE_ID = T.T_ID
    LEFT JOIN L2_BRANCH B
    ON X.BRANCH_ID = B.BRANCH_ID
    LEFT JOIN L2_SUBJECT_DETAILS LSD
    ON LSD.SUBJECT_CODE = X.SUBJECT_CODE
WHERE
    "SUBJECT_ID" = :P2_SUBJECT_ID
    AND X.BRANCH_ID = (
        SELECT
            SS.BRANCH_ID
        FROM
            L2_STUDENTS SS
        WHERE
            SS.USN = (
                SELECT
                    USN
                FROM
                    L2_EMAIL_TO_USN
                WHERE
                    EMAIL_ID = LOWER('manojadkc2004@gmail.com')
            )
    );

SELECT
    "ROWID",
    NULL       LINK_CLASS,
    APEX_PAGE.GET_URL(
        P_ITEMS => 'P6_ROWID',
        P_VALUES => "ROWID"
    )          LINK,
    NULL       ICON_CLASS,
    NULL       LINK_ATTR,
    NULL       ICON_COLOR_CLASS,
    CASE
        WHEN COALESCE(:P6_ROWID, '0') = "ROWID"
        THEN
            'is-active'
        ELSE
            ' '
    END        LIST_CLASS,
    (SUBSTR("TEST_CODE", 1, 50)
     ||(
        CASE
            WHEN LENGTH("TEST_CODE") > 50 THEN
                '...'
            ELSE
                ''
        END )) LIST_TITLE,
    (SUBSTR("DATE_TESTS", 1, 50)
     ||(
        CASE
            WHEN LENGTH("DATE_TESTS") > 50 THEN
                '...'
            ELSE
                ''
        END )) LIST_TEXT,
    NULL       LIST_BADGE
FROM
    "L2_TESTS" X
WHERE
    (:P6_SEARCH IS NULL
    OR UPPER(X."TEST_CODE") LIKE '%'
                                 ||UPPER(:P6_SEARCH)
                                 ||'%'
    OR UPPER(X."DATE_TESTS") LIKE '%'
                                  ||UPPER(:P6_SEARCH)
                                  ||'%' )
ORDER BY
    "TEST_CODE"
    SELECT
        NULL          LINK_CLASS,
        APEX_PAGE.GET_URL(
            P_ITEMS => 'P6_ROWID',
            P_VALUES => X."ROWID"
        )             LINK,
        NULL          ICON_CLASS,
        NULL          LINK_ATTR,
        NULL          ICON_COLOR_CLASS,
        CASE
            WHEN COALESCE(:P6_ROWID, '0') = X."ROWID"
            THEN
                'is-active'
            ELSE
                ' '
        END           LIST_CLASS,
        X."TEST_CODE" LIST_TITLE,
        X.SUBJECT_ID  LIST_TEXT,
        NULL          LIST_BADGE
    FROM
        "L2_TESTS"  X
        LEFT JOIN L2_SUBJECTS Y
        ON X.SUBJECT_ID = Y.SUBJECT_ID
    WHERE
        (:P6_SEARCH IS NULL
        OR UPPER(X."TEST_CODE") LIKE '%'
                                     ||UPPER(:P6_SEARCH)
                                     ||'%'
        OR UPPER(X."DATE_TESTS") LIKE '%'
                                      ||UPPER(:P6_SEARCH)
                                      ||'%' )
        AND Y.BRANCH_ID = (
            SELECT
                SS.BRANCH_ID
            FROM
                L2_STUDENTS SS
            WHERE
                SS.USN = (
                    SELECT
                        USN
                    FROM
                        L2_EMAIL_TO_USN
                    WHERE
                        EMAIL_ID = LOWER('manojadkc2004@gmail.com')
                )
        )
    ORDER BY
        X."TEST_CODE";