-- Baby's First Functions

-- Create a function called 'cube' that returns the third power of its
-- argument

cube x = x * x * x

-- Create a function, 'cuboiud, that gives the volumen of a hexahedron 
-- when provided height, length, and depth

cuboid h l d = h * l * d

-- Create a function, 'oddsorevens", that takes two values and returns "Odd"
-- if their sum is odd or "Even" otherwise

oddsorevens x y = if even (x + y)
		    then "Even"
		    else "Odd"

-- An Intro to Lists

-- Create a function, 'taketail' that returns the last N elements of a list
-- or the entire list if less than N elements

taketail n xs = drop (length xs - n) xs

-- Create a function, 'sumeven', to add up all the even numbers from 2 to N.

sumeven n = sum (take n [2, 4..])

-- List Comprehensions

-- Create a function 'longwords' that takes a list of strings and returns a
-- new list containing only strings longer than 3 characters

longwords xs = [x | x <- xs, length x > 3]

-- Create a function 'boundedwords' that takes two numbers and a list of
-- strings and returns a new list containing only strings whose length is
-- between the two arguments, inclusive.

boundedwords n m xs = [x | x <- xs, length x >= n, length x <= m]

-- Create a function 'intersection' that takes two lists and returns a list
-- of the elements they have in common.

intersection xs ys = [x | x <- xs, y <- ys, x == y]

-- Tuples

-- Create a function 'samelength' that takes a list of tuples containing
-- two strings, (e.g first and last names), and returns only those whose
-- whose first names are the same length as their last names

samelength xs = [x | x <- xs, length (fst x) == length (snd x)]
