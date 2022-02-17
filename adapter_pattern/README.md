# Adapter pattern in OOP

### Problem

there is a factory which provides goods in boxes. Boxes are build with 
special shape for factory load system. 
also there is a local market where there is no auto load system, so there are only human loaders.
the problem is that factory boxes are very inconvenient for loaders and they spend much time for uploading.
task is to solve load problem in market.

It is impossible to install auto load system in market because lack of money
It is impossible to install another load system in factory because of technical issues.

### Solution

make special convenient shell for boxes which is created after box sending from factory
and before delivering to market. It will provide fast uploading for human load system

### Program setup

1) Class Factory
2) Class Market
3) Class Order
4) Class CargoBox

### Program solution

Class AutoToHumanAdapter - class which has box link and interface method for fast interaction with people

_**It is way of realising [Adapter](https://refactoring.guru/ru/design-patterns/adapter) pattern in OOP.**_

[comment]: <auto_to_human_adapter.rb> (TODO make example more useful (as is: adapter just change argument for hardcode)
