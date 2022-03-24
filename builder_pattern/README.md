# Builder pattern in OOP

### Problem

There are complex objects - pizzas. They have many components, so, 
creating of them means making a huge constructor with many params or making tons different
subclasses. There is a task of creating pizzas in comfortable way.

### Solution

Creating builder class for pizzas with many methods of adding parts to final product.

### Program setup

1) Class Ingredient (part of Pizza)
2) Class Pizza (complex object)
3) Class PizzaShop (code which works with many pizzas)

### Program solution

1) Class PizzaBuilder (interface for builders)
2) Class [Concrete]Builder (creates pizzas with many parts step by step)
3) Class PizzaDirector (manages creating different types of pizzas)

_**It is way of realising [Builder](https://refactoring.guru/ru/design-patterns/builder) pattern in OOP.**_
