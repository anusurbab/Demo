"! API for Initializing the Transactional Buffer of the Travel API
"!
FUNCTION FLIGHT_TRAVEL_INITIALIZE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  cl_flight_legacy=>get_instance( )->initialize( ).
ENDFUNCTION.
