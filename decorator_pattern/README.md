# Decorator pattern in OOP

### Problem

There is API for getting info about people in company. We have some access levels
and some data attributes which are not allowed to be checked by regular users.
So we need to change data responses dynamically depends on role.
Moreover, every manager can have additional statistic allowance, so there can be 
many changes for 1 response 

### Solution

many small "wrappers" which can be used for adding new abilities for different roles.
Statistic for statistic managers, partial access for regular users

### Program setup

1) Class Person (basic data model)
2) Class Manager (system user with access modes)
3) Class Client (workspace for managers with data)

### Program solution

1) Class DataPresentDecorator (interface + wrapping logic)
2) Class ForRegularDecorator < DataPresentDecorator
3) Class ForStatisticDecorator < DataPresentDecorator

_**It is way of realising [Decorator](https://refactoring.guru/ru/design-patterns/decorator) pattern in OOP.**_
