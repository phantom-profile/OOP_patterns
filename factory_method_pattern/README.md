# Factory method pattern in OOP

### Problem

There are some types of units in strategy game. All of them can deal and receive damage.
So, game have to work with any type of units through common interface in case
we will introduce new unit later and to remove tons of type checks.

### Solution

Factory which produce units with common interface, so, we can create any type of units 
in concrete factories just using factory.create_unit(*args). This code
produces Archer, Paladin, Mage and so on. 

### Program setup

1) Class Unit
2) Class Archer < Unit
3) Class Paladin < Unit
4) Class Game

### Program solution

1) Class UnitFactory
2) Class ArcherFactory < UnitFactory
3) Class PaladinFactory < UnitFactory

_**It is way of realising [Factory method](https://refactoring.guru/ru/design-patterns/factory-method) pattern in OOP.**_
