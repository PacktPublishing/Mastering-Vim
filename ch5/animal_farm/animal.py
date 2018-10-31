"""An animal base class."""


class Animal(object):

    def __init__(self, kind):
        self.kind = kind

    def get_kind(self):
        return self.kind
