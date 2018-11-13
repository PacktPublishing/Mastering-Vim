"""A dog."""

import animal

class Dog(animal.Animal):

    def __init__(self):
        self.kind = 'dog'

    def get_kind(self):
        return self.kind
