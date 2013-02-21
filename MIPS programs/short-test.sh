#!/bin/bash

# Just run this file and you can test your code! Make sure your code is in the directory above this one though! From Sung Roa
cp cpu.circ test-files
cp alu.circ test-files
cp Regfile.circ test-files
cd test-files
./autograder_limited.py -here
cd ..