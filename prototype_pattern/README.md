# Prototype pattern in OOP

### Problem

There are complex objects - house info. It has owner info and building info. 
There are many houses which have mostly similar info, so, it is not logical to
create info from zero every time.

### Solution

Creating prototype interface for house info with ability to clone previously created objects.

### Program setup

1) Class HouseInfo (complex object)
2) Class BuildingInfo (part with info about building)
3) Class OwnerInfo (part with info about building)
4) Class HouseRegister (client which creates new HouseInfo objects) 

### Program solution

1) Module Prototyped (interface for cloning objects)

_**It is way of realising [Prototype](https://refactoring.guru/ru/design-patterns/prototype) pattern in OOP.**_
