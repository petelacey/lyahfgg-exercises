-- Believe the type

-- Provide the type declaration and definition for the 'oddsorevens'
-- function created in chapter 1.

oddsorevens :: Int -> Int -> String
oddsorevens x y = if even (x + y)
		    then "Even"
		    else "Odd"

-- Do the same for the 'samelength' function

samelength :: [(String, String)] -> [(String, String)]
samelength xs = [x | x <- xs, length (fst x) == length (snd x)]

-- Typeclasses 101

-- Provide the type declaration and definition for the 'intersection'
-- function.

intersection :: (Eq a) => [a] -> [a] -> [a]
intersection xs ys = [x | x <- xs, y <- ys, x == y]

-- Declare and define a function, prependToStr, that takes an anything and
-- a String and returns a String with the two concatenated together

prependToStr :: (Show a) => a -> String -> String
prependToStr x s = show x ++ s
