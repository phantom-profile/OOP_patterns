# Singleton pattern in OOP

### Problem

There is a country with bunch of cities with government, which has two tasks: collect taxes and spend them on new buildings. There are
many inattentive people in government so it is important to make safe system of control for money flow. 
In other words if there is a chance of miss understanding who has to spend money and who has to collect them - 
be pretty sure that it will happen.

### Solution

make single access point to government system, so if government is called we can exactly say thai it is THAT people who 
manage city.

### Program setup

1) Class Country (has many cities)
2) Class City (has many buildings)
3) Class Building
4) Class Government (has one budget)
5) Class Budget (cannot be separated from Government)

### Program solution

Make Class Government a singleton, so we can call Government.instance and get only one exact government.
It causes only one budget and no loss of info/money in country.

_**It is way of realising [Singleton](https://refactoring.guru/ru/design-patterns/singleton) pattern in OOP.**_