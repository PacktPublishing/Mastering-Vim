#!/usr/bin/python3

"""Our own little animal farm."""

import sys

from animals import cat
from animals import dog
from animals import sheep
import animal
import farm

def make_animal(kind):
    """Create an animal class."""
    if kind == 'cat':
        return cat.Cat()
    if kind == 'dog':
        return dog.Dog()
    if kind == 'sheep':
        return sheep.Sheep()
    return animal.Animal(kind)

def main(animals):
    animal_farm = farm.Farm()
    for animal_kind in animals:
        animal_farm.add_animal(make_animal(animal_kind))
    animal_farm.print_contents()

if __name__ == '__main__':
    if len(sys.argv) == 1:
        print('Pass at least one animal type!')
        sys.exit(1)
    main(sys.argv[1:])
