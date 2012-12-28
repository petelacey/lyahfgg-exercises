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

-- Create a function, 'first5' that returns the first 5 elements of a list
-- or the entire list if less than 5 elements

first5 xs = take 5 xs

-- List Comprehensions


