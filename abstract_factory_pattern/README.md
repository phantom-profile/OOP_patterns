# Abstract factory pattern in OOP

### Problem

There are two products: headphones and smartphones of two series, Apple and Samsung.
Smart connection can be established only in one ecosystem, iphone - airpods, S-phone - earbuds.
Very important to control correct connection, because wrong connections ruin program.
Also, it is possible that new families of headphones-smartphones will be added


### Solution

Create factory for each family. It creates only smartphones and headphones of one brand.
So, sending client code one factory means that connection will be correct, and factory can 
manage each of product types in family.

### Program setup

1) Class Iphone - apple smartphones
2) Class Airpods - apple headphones
3) Class Galaxy - samsung smartphone
4) Class Earbuds - samsung headphones
5) Class ConnectionManager - client code where connection in established

### Program solution

1) Class TechFactory - abstract producer of gadgets 
2) Class AppleFactory - producer of Apple gadgets
3) Class SamsungFactory - producer of Samsung gadgets

_**It is way of realising [Abstract factory](https://refactoring.guru/ru/design-patterns/abstract-factory) pattern in OOP.**_
