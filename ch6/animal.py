"""An animal base class."""


class Animal(object):

    def __init__(self, kind):
        self.kind = kind

    def get_kind(self):
        return self.kind

    def act(self, target, verb):
        return 'Suddenly {kind} {verb} at {target}!'.format(
                kind=self.kind,
                verb=verb,
                target=target)
