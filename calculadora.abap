REPORT ZPROG_EX7_05.
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: n1 TYPE p DECIMALS 1,
              n2 TYPE p DECIMALS 1.
  SELECTION-SCREEN END OF BLOCK b1.
  DATA: result TYPE p DECIMALS 1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: som RADIOBUTTON GROUP rb,
              sub RADIOBUTTON GROUP rb,
              mult RADIOBUTTON GROUP rb,
              div RADIOBUTTON GROUP rb,
              rad RADIOBUTTON GROUP rb.
SELECTION-SCREEN END OF BLOCK b2.
IF ( n2 = 0 ) AND ( div = 'X' ).
  WRITE: 'Não existe div 0'.
ELSEIF som = 'X'.
  result = n1 + n2.
  WRITE:  result.
ELSEIF sub = 'X'.
  result = n1 - n2.
  WRITE:  result.
ELSEIF mult = 'X'.
  result = n1 * n2.
  WRITE:  result.
ELSEIF div = 'X'.
  result = n1 / n2.
  WRITE:  result.
ELSEIF rad = 'X'.
  result = SQRT( n1 ).
  WRITE:  result.
ENDIF.