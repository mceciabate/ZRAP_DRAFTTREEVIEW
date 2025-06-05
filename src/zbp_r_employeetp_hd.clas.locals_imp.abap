CLASS lhc_Employee DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Employee RESULT result.

    METHODS validationCurrencyExists FOR VALIDATE ON SAVE
      IMPORTING keys FOR Employee~validationCurrencyExists.

    METHODS validationNameGiven FOR VALIDATE ON SAVE
      IMPORTING keys FOR Employee~validationNameGiven.

    METHODS validationSalaryPositive FOR VALIDATE ON SAVE
      IMPORTING keys FOR Employee~validationSalaryPositive.

ENDCLASS.

CLASS lhc_Employee IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD validationCurrencyExists.
  ENDMETHOD.

  METHOD validationNameGiven.
  ENDMETHOD.

  METHOD validationSalaryPositive.
  ENDMETHOD.

ENDCLASS.
