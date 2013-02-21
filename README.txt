To use this framework, make sure your cpu, alu, and Regfile are on this directory (as it should be by default) then run

./short-test.sh

from this directory. It will make copies of your cpu, alu, and Regfile in the test-files directory, so if you have a different copy there, BE CAREFUL NOT to get it overwritten! (You should work in this main directory)

The autograder works by running Logisim in a command-line mode, which shows all of the ouputs of your processor after every clock tick. Your processor's outputs should match the reference ones.

The expected outputs are the *.out files. The *.circ files are harnesses with a program loaded into them.

If you want to actually have a look at the harness and see what your errors are, I would recommend you to go to the test-files directory to this directory, run the appropriate test circuit in logisim, and see what the errors are. (The assembly codes are in the assem directory inside the test-files, so you can look at that too)

You will fail all the tests until you have the two-stage pipeline fully working.

If you want to test your own codes, what you can do is first write the code you want to test in MIPS, then run it through the assembler by running:

python assembler.py TESTCODE.s

and then place the hex file (will be named something along the lines of TESTCODE.hex) in the harness of the CPU by loading it into the RAM. (Right click the RAM and load image)