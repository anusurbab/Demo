CLASS cl_flight_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS:
      "! Calculation of Price <br/>
      "!  <br/>
      "! Propagation to cl_flight_legacy=>calculate_flight_price.<br/>
      "! @parameter iv_seats_occupied_percent | occupied seats
      "! @parameter iv_flight_distance | flight distance in kilometer
      "! @parameter rv_price | calculated flight price
      calculate_flight_price
        IMPORTING
          iv_seats_occupied_percent TYPE plane_seats_occupied
          iv_flight_distance        TYPE i
        RETURNING
          VALUE(rv_price)           TYPE flight_price.
ENDCLASS.



CLASS cl_flight_data_generator IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'Starting Data Generation' ).

    out->write( 'Generate Data: Airport      AIRPORT' ).
    lcl_airport_data_generator=>lif_data_generator~create( out ).

    out->write( 'Generate Data: Carrier      CARRIER' ).
    lcl_carrier_data_generator=>lif_data_generator~create( out ).
    out->write( 'Generate Data: Connection   CONNECTION' ).
    lcl_connection_data_generator=>lif_data_generator~create( out ).
    out->write( 'Generate Data: Flight       FLIGHT' ).
    lcl_flight_data_generator=>lif_data_generator~create( out ).


    out->write( 'Generate Data: Agency       AGENCY' ).
    lcl_agency_data_generator=>lif_data_generator~create( out ).

    out->write( 'Generate Data: Customer      CUSTOMER' ).
    lcl_customer_data_generator=>lif_data_generator~create( out ).

    out->write( 'Generate Data: Supplement      SUPPLEMENT' ).
    lcl_supplement_data_generator=>lif_data_generator~create( out ).

    out->write( 'Generate Data: Travel      TRAVEL' ).
    out->write( 'Generate Data: Booking      BOOKING' ).
    out->write( 'Generate Data: Booking Supplement      BOOK_SUPPL' ).
    lcl_travel_data_generator=>lif_data_generator~create( out ).

    out->write( 'Finished Data Generation' ).
  ENDMETHOD.
  METHOD calculate_flight_price.
    rv_price = cl_flight_legacy=>calculate_flight_price(
                 iv_seats_occupied_percent = iv_seats_occupied_percent
                 iv_flight_distance        = iv_flight_distance
               ).
  ENDMETHOD.

ENDCLASS.
