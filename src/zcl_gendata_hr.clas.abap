CLASS zcl_gendata_hr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_gendata_hr IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zagency_a_hd.
    DELETE FROM zemploy_a_hd.

    INSERT zagency_a_hd FROM
    ( SELECT
        FROM /dmo/agency
        FIELDS
          agency_id,
          name,
          street,
          postal_code,
          city,
          country_code,
          phone_number,
          email_address,
          web_address,
          attachment,
          mime_type,
          filename,
          local_created_by,
          local_created_at,
          local_last_changed_by,
          local_last_changed_at,
          last_changed_at
          ORDER BY agency_id UP TO 200 ROWS
     ).
    COMMIT WORK.

    INSERT zemploy_a_hd FROM
    ( SELECT
        FROM /dmo/employee_hr
        FIELDS  employee,
                CAST( '070002' AS NUMC ) AS agency,
                first_name,
                last_name,
                salary,
                salary_currency,
                manager,
                CAST( '001' AS INT4 ) AS sibling_order_number
            ORDER BY employee UP TO 100 ROWS ).
    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
