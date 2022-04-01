04-03-2022
- Source code placed in "Labview source code". 

Comments regarding current software

- Due to previous build, the Labview code contained a "Watchdog timer". This was used in order to use the 1Hz sequence from Labview to PLC. However sometimes perhaps some race condition ocured, such that the lifebit was delayed between 1 sec to 2,5 sec. Therefore this latest version, the "Watchdog timer" loop is been removed, such that the Labview read and write very fast over Modbus. However the LED blinking is therefore very rapid, because when Labview write to PLC, the first write is 1 and the next write is the oppersite. This was tried out to fix with a timer, but something needs to be investigated, why this do not work as intended. 

- FVIR and LDO:Swap the data, i.e. 28-10-2021 --> 2021-10-28. --> Lets test this first to see the currents PC timeformat. 
All data is in the file now. Also the status of LEDs and what Labview is sending --> A lot of redundant info here. What from 
Labview --> PLC should be recorded?

- FVIR: Missing implementation: Getting the glas flow rate, SQRH. CO, CO2 and O2 from the VI's from GEA

- Missing final touch on making the Labview application ready for production. I.e. removing 


- The LED light, when some butane level is above 1.8 % a given threshold


The screen resolution/layout, in case that the HMI is now visual due to the screen that is in US