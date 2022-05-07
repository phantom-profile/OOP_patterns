# Template method pattern in OOP

### Problem

There is algorithm for creating new user in your system. Basically there are three steps
for doing it. Create data structure in your storage, log creation and notify user via message.
But there are many options, two DB types: Redis and SQL, notification via sms or email
and logging via api with special service or your own log system.
So, we need to provide single algorithm with different steps realization.

### Solution

Single object in system which provide us with exact knowledge of algorithm 
but many objects which will realise algorithm in their own way

### Program setup

1) Class User (basic data model)
2) Class Client (code which tries to register users)

### Program solution

1) Class UserRegistration (interface + algorithm)
2) Class RedisApiLogSmsRegistration < UserRegistration
3) Class SqlOwnLogEmailRegistration < UserRegistration

_**It is way of realising [Template method](https://refactoring.guru/ru/design-patterns/template-method) pattern in OOP.**_
