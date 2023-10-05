#!/usr/bin/env python3


class Creature:
    def __init__(self):
        self.all = all

    def life(self):
        return True


class Canins(Creature):
    """
    all canins are here
    """

    def __init__(self):
        super().__init__()
        self.leg = 4
        # print(self.leg)

    def tail(self):
        """
        canin should have tail
        """
        return True

    def smelling_sense(self):
        """
        canin should have nose
        """
        return True


class Dog(Canins):
    """
    what a dog does
    """

    def __init__(self, name, trick, sound=None):
        super().__init__()
        # Canins.__init__(self)
        self.name = name
        self.trick = trick
        self.sound = sound

    def add_trick(self):
        """
        Add some tricks to dog
        """
        return self.trick

    def add_sound(self):
        """
        how does a dog burgs
        """
        return self.sound


def main():
    """
    the main function
    """
    dog_1 = Dog("vella", 123, "wow")
    print(dog_1.add_sound())
    print(dog_1.leg)
    print(dog_1.tail())
    print(dog_1.life())


if __name__ == "__main__":
    main()
