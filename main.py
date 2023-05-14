import os
from distutils.util import strtobool

if __name__ == '__main__':
    print("hello world")
    print("A", os.environ['A'])
    print("B", os.environ['B'])
    print("C", os.environ['C'])
    print("D", os.environ['D'])

    print("Should be True: ", strtobool(os.environ['B']) == False)