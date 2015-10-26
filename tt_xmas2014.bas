INPUT "How many sections should your Xmas tree have"; sections

CLS

COLOR 14

cols = sections * 20

cols = cols + (cols MOD 2)

filler = (cols - 1) / 2

line$ = ""

FOR i = 1 TO filler STEP 1
    line$ = line$ + " "
NEXT i

line$ = line$ + "*"

PRINT line$

COLOR 2

line$ = ""

FOR i = 1 TO filler STEP 1
    line$ = line$ + " "
NEXT i

line$ = line$ + "^"

PRINT line

FOR i = 1 TO sections STEP 1
    rows = 1 + i

    FOR j = 1 TO rows STEP 1
        line$ = ""

        nextstartcol = 0

        IF i = 1 THEN
            IF j = 1 THEN
                sectioncols = 3
                nextstartcols = 3
            ELSE
                sectioncols = sectioncols + 2
            END IF
        ELSE
            IF j = 1 THEN
                sectioncols = nextstartcols
            ELSE
                sectioncols = sectioncols + 2

                IF j = rows - 1 THEN
                    nextstartcols = sectioncols
                END IF
            END IF
        END IF

        filler = (cols - sectioncols) / 2

        FOR k = 1 TO filler STEP 1
            line$ = line$ + " "
        NEXT k

        FOR k = 1 TO bodycols STEP 1
            line$ = line$ + "^"
        NEXT k

        PRINT line$
    NEXT j
NEXT i

COLOR 15

filler = (cols - 15) / 2

line$ = ""

FOR i = 1 TO filler STEP 1
    line$ = line$ + " "
NEXT i

line$ = line$ + "MERRY CHRISTMAS!"

FOR i = 1 TO filler STEP 1
    line$ = line$ + " "
NEXT i

PRINT line$

filler = (cols - 5) / 2

line$ = ""

FOR i = 1 TO filler STEP 1
    line$ = line$ + " "
NEXT i

line$ = line$ + "T___T"

PRINT line$
