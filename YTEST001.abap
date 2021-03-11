REPORT YYBL_95.

DATA: BEGIN OF ls_data,
        col1 TYPE i,
        col2 TYPE i,
        col3 TYPE i,
       count TYPE i,
      END OF ls_data,
      lt_data LIKE TABLE OF ls_data.

CLEAR: ls_data.
ls_data-col1 = 1.
ls_data-col2 = 1.
ls_data-col3 = 1.
ls_data-count = 1.
APPEND ls_data TO lt_data.
CLEAR: ls_data.
ls_data-col1 = 1.
ls_data-col2 = 1.
ls_data-col3 = 1.
ls_data-count = 1.
APPEND ls_data TO lt_data.
CLEAR: ls_data.
ls_data-col1 = 1.
ls_data-col2 = 1.
ls_data-col3 = 1.
ls_data-count = 1.
APPEND ls_data TO lt_data.
CLEAR: ls_data.
ls_data-col1 = 1.
ls_data-col2 = 2.
ls_data-col3 = 1.
ls_data-count = 1.
APPEND ls_data TO lt_data.


SORT lt_data BY col1 col2 col3.
LOOP AT lt_data INTO DATA(ls_data).
  AT END OF col3.
    SUM.
    WRITE: ls_data-count.
  ENDAT.
ENDLOOP.
