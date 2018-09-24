class Parrot:

    def __init__(self, name):
        self._name = name

    def make_noise(self):
        print('Ahoy matey!')

    @property
    def name(self):
        return self._name
