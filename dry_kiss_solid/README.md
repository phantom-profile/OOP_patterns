## Principles of writing code in right way

### Good materials about it:
* **Topic on Habr** - "[Принципы для разработки: KISS, DRY, YAGNI, BDUF, SOLID, APO и бритва Оккама](https://habr.com/ru/company/itelma/blog/546372/)"
* **Video on YouTube** - "[SOLID ПРИНЦИПЫ простым языком (много примеров)](https://www.youtube.com/watch?v=TxZwqVTaCmA)"

**DRY** - Do not repeat yourself, it means try not to duplicate code.

**YAGNI** - You Aren’t Gonna Need It. It means not to write code which you do not need. In other words
write code only for your tasks. No need to write in advance.

**KISS** - Keep It Simple, Stupid. It means use simple tools and algorithms if it possible.

**SOLID** - bundle of principles for making more reliable simple and easy-supportive code.
1) **S** - Single-responsibility principle. One structural block is responsible for one task.
2) **O** - Open–closed principle. Previously written functionality cannot be modified. But can become wider.
3) **L** - Liskov substitution principle. Older classes can be replaced with child classes without conflicts.
4) **I** - Interface segregation principle. Try to separate interfaces logically. Use methods which needed for classes.
5) **D** - Dependency inversion principle. We have to rely on abstractions but not to realisation.

### Examples in SOLID:

S:

    Class Pen
        # correct interface

        def write_word; end
        def draw_picture; end

        # incorrect interface. More than one task

        def name_owner; end
        def shoot_papers; end
    end

O:
    
    # incorrect. Method modification.
    git commit -m "Replaced Pen#write_word to Pen#write_one_or_more_words"
    
    # correct. Method adding
    git commit -m "Added Pen#write_many_words"

L:

    # incorrect. Child changing parent behaviour

    Class Pen
        def write_one(word) 
            word.each { |letter| puts letter }
        end
    end

    Class ReversedPen < Pen
        def write_one(word)
            word.reverse.each { |letter| puts letter }
        end
    end

    # correct. Child includes new functionality
    
    Class Pen
        def write_one(word)
            word.each { |letter| puts letter }
        end
    end

    Class BothSidesPen < Pen
        def write_reversed(word)
            word.reverse.each { |letter| puts letter }
        end
    end

I:

    # incorrect. Many methods which aren't needed in one interface

    Class Animal
        def eat; end # needed for all animals, ok
        def walk; end # needed only for walking animals, wrong
        def swim; end # needed only for swimming animals, wrong
    end

    # correct. Only needed interfaces for classes

    class Animal
        def eat; end
    end

    module Swimming
        def swim; end
    end
    
    module Walking
        def walk; end
    end

    class Fish < Animal
        include Swimming
    end

    class Crocodile < Animal
        include Swimming
        include Walking
    end

D:

    # incorrect. We use method hoping it is not be changed.

    class DatePrinting
        # so, if Date constructor will be changed we have to change it twice

        def first_of_march(year = Date.today.year)
            puts Date.new year, 3, 1 
        end

        def first_of_june(year = Date.today.year)
            puts Date.new year, 6, 1
        end
    end

    # correct. Abstract layer for dates, so we need change only in one place.

    class DateAdapter
        def self.date_in_format(day:, month:, year:)
            Date.new year, month, day
        end
    end

    class DatePrinting
        # no changes here

        def first_of_march(year = Date.today.year)
            puts DateAdapter.date_in_format day: 1, month: 3, year: year
        end

        def first_of_june(year = Date.today.year)
            puts DateAdapter.date_in_format day: 1, month: 6, year: year
        end
    end
