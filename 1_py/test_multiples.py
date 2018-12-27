import unittest
from multiples import *

# python -m unittest test_multiples.py

class MyFirstTests(unittest.TestCase):

    def test_hello(self):
        self.assertEqual(hello_world(), 'hello world')