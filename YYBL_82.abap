REPORT YYBL_82.

* REDUCE
WRITE: / REDUCE i( INIT sum  = 0 " i 是类型
                    FOR n    = 1 UNTIL n > 10
                   NEXT sum  = sum + n ).

WRITE: / REDUCE string( INIT text = `Count up:`
                         FOR n    = 1 UNTIL n > 10
                        NEXT text = text && |{ n }| ).

WRITE: / REDUCE string( INIT text = `Count down:`
                         FOR n    = 10 THEN n - 1 WHILE n > 0
                        NEXT text = text && | { n } | ).

WRITE: / REDUCE string( INIT text = ``
                         FOR t    = `x`  THEN t && `Y`
                         UNTIL strlen( t ) > 10
                         NEXT text = text && | { t } | ).