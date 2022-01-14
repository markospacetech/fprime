module Drv {
 
  passive component LinuxSerialDriver {

    # ----------------------------------------------------------------------
    # General ports
    # ----------------------------------------------------------------------

    sync input port readBufferSend: Fw.BufferSend

    sync input port serialSend: Drv.SerialWrite

    sync input port binaryMode: [1] Drv.BinaryMode

    # ----------------------------------------------------------------------
    # Special ports
    # ----------------------------------------------------------------------

    event port Log

    output port serialRecv: Drv.SerialRead
    
    telemetry port Tlm

    text event port LogText

    time get port Time

    # ----------------------------------------------------------------------
    # Events
    # ----------------------------------------------------------------------

    include "Events.fppi"

    # ----------------------------------------------------------------------
    # Telemetry
    # ----------------------------------------------------------------------

    include "Telemetry.fppi"

  }

}
