-- Hello recursion!

-- Write the 'factorial' function recursively. That is, return the product
-- of all positive integers less than or equal to its argument
-- factorial 3 = 1 * 2 * 3 = 6

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Write a function, mult, that takes 2 integers and multiplies them
-- together - recurseively

mult :: Int -> Int -> Int
mult _ 0 = 0
mult a 1 = a
mult a b = a + a `mult` (b - 1)

-- A few more recursive functions

-- Recursively implement the ++ function to concatenate two list
-- together. Call it concat' since we don't know how to define infix
-- operators yet

concat' :: [a] -> [a] -> [a]
concat' [] ys = ys 
concat' (x:xs) ys = x:concat' xs ys 
