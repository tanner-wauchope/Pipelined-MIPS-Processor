#!/usr/bin/env python

import autograder_base
import os.path

from autograder_base import file_locations, AbsoluteTestCase, FractionalTestCase, main

tests = [
  ("lui test",AbsoluteTestCase(os.path.join(file_locations,'lui.circ'),os.path.join(file_locations,'lui.out'),1)),
  ("ori test",AbsoluteTestCase(os.path.join(file_locations,'ori.circ'),os.path.join(file_locations,'ori.out'),1)),
  ("add test",AbsoluteTestCase(os.path.join(file_locations,'add.circ'),os.path.join(file_locations,'add.out'),1)),
  ("addi test",AbsoluteTestCase(os.path.join(file_locations,'addi.circ'),os.path.join(file_locations,'addi.out'),1)),
  ("slt test",AbsoluteTestCase(os.path.join(file_locations,'slt.circ'),os.path.join(file_locations,'slt.out'),1)),
  ("disp test",AbsoluteTestCase(os.path.join(file_locations,'disp.circ'),os.path.join(file_locations,'disp.out'),1)),
  ("branches test",AbsoluteTestCase(os.path.join(file_locations,'branches.circ'),os.path.join(file_locations,'branches.out'),1)),
  ("fibonacci test",AbsoluteTestCase(os.path.join(file_locations,'fibonacci.circ'),os.path.join(file_locations,'fibonacci.out'),1)),
]

if __name__ == '__main__':
  main(tests)
