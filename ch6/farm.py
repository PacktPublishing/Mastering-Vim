"""A farm for holding animals."""

class Farm(object):

    def __init__(self):
        self.animals = set()

    def add_animal(self, animal):
        self.animals.add(animal)

    def act(self, target):
        for animal in self.animals:
            if animal.get_kind() == 'cat':
                print(animal.act(target, 'meows'))
            elif animal.get_kind() == 'dog':
                print(animal.act(target, 'barks'))
            elif animal.get_kind() == 'sheep':
                print(animal.act(target, 'baas'))
            else:
                print(animal.act(target, 'looks'))

    def print_contents(self):
        print("We've got some animals on the farm:",
              ', '.join(animal.get_kind() for animal in self.animals) + '.')
