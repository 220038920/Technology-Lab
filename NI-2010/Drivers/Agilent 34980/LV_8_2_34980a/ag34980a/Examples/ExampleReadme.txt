			  DAC Example VI

This example defines a trace named "Example Trace" on the 34951 DAC card.  It then outputs

that trace.  The output of the DAC card is wired into channel 2505 of a mulitplexer card

in slot 2.  The closing of channels 2005 and 2921 routes the signal to the 34980A's DMM.

The DMM then measures the DAC signal for AC Volts and Frequency.


			Mux Example VI

This example configures multiple channels to be different function types.  It then places

those channels in a scan list and scans the channels.


			DigIO Example VI

This example uses the 34952 Multi-function card.  A voltage is output on one of

the DAC channels and that channel gets counted by the totalizer on channel

of the card.  Then the digital IO port on channel 1 is configured to output

a digital byte containing 85 decimal.  The digital IO port on channel 3 is

configured to read a byte.  The counter and digital IO Channel 3 are then read

and the results displayed.


                     CheckOper_45 VI

This vi looks at the description of the first 34945EXT module, presets all

banks on the module to default values for that distribution board type,

enables verification of the switch closure (using negative polarity), closes

a channel, reads the IsClosed state of that channel, and reads the drive

status of the channel.  (NOTE that the drive state will be "0" if the channel

is set for Pulsed operation).  NOTE also that inverted verification polarity

is needed with the N1810UL Switch.

This example assumes the following hardware configuration:
           - 34945A RF/Microwave Switch Driver
           - 34945EXT connected to 34945AA with cable
           - (1) Y1150A Distribution Module in slot 1 of 34945EXT
           - (1) N1810UL Switch in SW1 socket

