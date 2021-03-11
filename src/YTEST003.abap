REPORT YYBL_95.

DATA: BEGIN OF gs_data,
        col1 TYPE i,
        col2 TYPE i,
        col3 TYPE i,
       count TYPE i,
      END OF gs_data,
      gt_data LIKE TABLE OF gs_data.

CLEAR: gs_data.
gs_data-col1 = 1.
gs_data-col2 = 1.
gs_data-col3 = 1.
gs_data-count = 1.
APPEND gs_data TO gt_data.
CLEAR: gs_data.
gs_data-col1 = 1.
gs_data-col2 = 1.
gs_data-col3 = 1.
gs_data-count = 1.
APPEND gs_data TO gt_data.
CLEAR: gs_data.
gs_data-col1 = 1.
gs_data-col2 = 1.
gs_data-col3 = 1.
gs_data-count = 1.
APPEND gs_data TO gt_data.
CLEAR: gs_data.
gs_data-col1 = 1.
gs_data-col2 = 2.
gs_data-col3 = 1.
gs_data-count = 1.
APPEND gs_data TO gt_data.

SORT gt_data BY col1 col2 col3.
LOOP AT gt_data INTO DATA(ls_data).
  AT END OF col3.
    SUM.
    WRITE: ls_data-count.
  ENDAT.
ENDLOOP.