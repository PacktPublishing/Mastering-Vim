class Animal:

    def __init__(self, kind, name):
         self.kind = kind
         self.name = name

    def act(self, target, verb):
        print(self.name, verb, 'at', target)

class Dog(Animal):

    def __init__(self, name):
        super().__init__(self, 'dog', name)

class Dogfish(Animal):

    def __init__(self):
        super().__init__(self, 'dogfish', name)

class Cat(Animal):

    def __init__(self):
        super().__init__(self, 'cat', name)
