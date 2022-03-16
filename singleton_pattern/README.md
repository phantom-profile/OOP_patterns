# Singleton pattern in OOP

### Problem

There is a database and application for reading and writing about animals which needs permanent access to DB. 
Each connection to DB is very expensive operation if we talk about time. 
That is why connection should be established only once. 

### Solution

make single access point to DB, so it is going to be established for the first time and
after that every new call of DB is going to return same BD connection.

### Program setup

1) Class Client
2) Class RedServer

### Program solution

Make Class RedServer a singleton, so we can call RedServer.connection and get only one exact connection.
It causes only one database and no time resources wasted.

_**It is way of realising [Singleton](https://refactoring.guru/ru/design-patterns/singleton) pattern in OOP.**_