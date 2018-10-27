"""A cat."""

import animal

class Cat(animal.Animal):

    def __init__(self):
        self.kind = 'cat'

    def get_kind(self):
        return self.kind
