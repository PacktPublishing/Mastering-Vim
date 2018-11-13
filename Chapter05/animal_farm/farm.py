"""A farm for holding animals."""

class Farm(object):

    def __init__(self):
        self.animals = set()

    def add_animal(self, animal):
        self.animals.add(animal)

    def print_contents(self):
        print("We've got some animals on the farm:",
              ', '.join(animal.get_kind() for animal in self.animals) + '.')
