CLASS lhc_Agency DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Agency RESULT result.

    METHODS earlynumbering_cba_Employee FOR NUMBERING
      IMPORTING entities FOR CREATE Agency\_Employee.

ENDCLASS.

CLASS lhc_Agency IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_cba_Employee.
  ENDMETHOD.

ENDCLASS.
