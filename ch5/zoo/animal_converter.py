import sys

def main(argv):
    animal = argv[1]
    if animal in ('cat', 'dog'):
        print(animal)
    else:
        print('octopus')


if __name__ == '__main__':
    main(sys.argv)
