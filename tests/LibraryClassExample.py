import robot
from robot.api import deco


class LibraryClassExample:
    def __init__(self):
        pass

    @robot.api.deco.keyword('welcome page should be open')
    def some_method(self):
        pass
