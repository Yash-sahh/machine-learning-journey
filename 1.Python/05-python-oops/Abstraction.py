# hiding internal details and showing only essential features

# it is differ from data hiding as data hiding only insure hiding of data but in abstraction we look which data is to hide and which to show

#to implement abstraction in python we use abstract classes-> these classes are blueprint for other classes and abstract classes are part of abc(abstraction based classes) module in python

from abc import ABC,abstractmethod

class Animal(ABC):   # we use ABC as inheritance to make Animal clasa abstract class
    @abstractmethod
    def make_sound():  #-> abstract method
        pass         # we use pass keyword if we doesnt want to add any logic inside function we only define that function for further reference as it is an abstract class

class Lion(Animal):
    def make_sound(self):
        print("Roar!")

class Cow(Animal):
    def make_sound(self):
        print("Moo!")

lion = Lion()
lion.make_sound()

cow = Cow()
cow.make_sound()
# Animal is an abstract class which is an blueprint for class Lion 