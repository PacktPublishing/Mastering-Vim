class Cat:

    def __init__(self, name):
        self._name = name

    def make_noise(self):
        print('Meow...')

    @property
    def name(self):
        return self._name
