# Simple-Calculator-
The purpose of this lab experiment is to build a calculator that inputs numbers from the Sony TV Remote on the 7-segment display which adds another number when inputted again, using the results from the previous labs.

**Procedure:**
Open the given file lab5top.v.
Cascade the full adder from lab 2 to make a 4-bit adder.
To do so, consecutively connect the carry output from each FA to the next one.
The result bits from each FA will be a bit for the 4-bit number we need.
Write the simulation code for 4 FAs together forming a 4-bit adder.
Assign 4 bit numbers directly to the inputs and observe the results of simulation.
Edit the given file lab5top.v to match the modules from the previous labs.
Verify the correctness of the edited lab5top.v with a TA, simulation is optional.
Load the project into a BASYS3 board.
On a breadboard, power the Pin 3 of the IR receiver with a 5 V DC source.
Connect a 51k Ohm resistor from Pin 1 to the ground.
Connect the oscilloscope to the output of the chip, which is Pin 1.
Connect a wire from Pin 1 to where the data is mapped on the BASYS3 board.
Connect Pin 2 to the ground.
Ground the BASYS3 board.
Set up the function generator to have 3.9 kHz and 3.3 V peak to peak value.
Connect the function generator input to where clk is mapped.
Check out with a TA.
Briefly describe the circuit and what happens when a button is pressed on the remote and it happens in the circuit.
