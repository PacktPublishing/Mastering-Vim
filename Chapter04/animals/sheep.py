"""A sheep."""

import animal

class Sheep(animal.Animal):

    def __init__(self):
        self.kind = 'sheep'

    def get_kind(self):
        return self.kind
