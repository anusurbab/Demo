"! API for Saving the Transactional Buffer of the Travel API
"!
FUNCTION FLIGHT_TRAVEL_SAVE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  cl_flight_legacy=>get_instance( )->save( ).
ENDFUNCTION.
