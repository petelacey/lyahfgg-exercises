-- Pattern Matching

-- Declare and define a function, 'isVowel, that takes a single character
-- and returns true if a vowel of false otherwise

isVowel :: Char -> Bool
isVowel 'a' = True
isVowel 'e' = True
isVowel 'i' = True
isVowel 'o' = True
isVowel 'u' = True
isVowel _ = False

-- Declare and define a recursive function, removeVowels , that removes all
-- vowels from a string

removeVowels :: String -> String
removeVowels "" = ""
removeVowels (c:cs) = if isVowel c
                        then removeVowels cs
		        else c:removeVowels cs

-- Guards, Guards

-- Rewrite isVowel, call it isVowel', using guards

isVowel' :: Char -> Bool
isVowel' c
  | c `elem` "aeiou" = True
  | otherwise = False

-- Rewrite removeVowels using guards

removeVowels' :: String -> String
removeVowels' "" = ""
removeVowels' (c:cs)
  | isVowel' c = removeVowels' cs
  | otherwise = c:removeVowels' cs

-- Where!?

-- Create a fucntion, ampm, that takes a string containing the time in 24
-- hour notation (e.g. "06:00") and returns "Morning" if between 06:00
-- and 11:59, "Afternoon" if between 12:00 and 17:59, "Evening" if between
-- 18:00 and 23:59, and "Bed Time" otherwise. Assume the input parameter is
-- always formatted "99:99" and don't worry about bad inputs.

ampm :: String -> String
ampm time
  | hours >= 18 = "Evening"
  | hours >= 12 = "Afternoon"
  | hours >=  6 = "Morning"
  | otherwise   = "Bed Time"
  where hours = read (take 2 time)

-- Let it be

-- Calculate the area of a circle, pi*radius^2, using a let expression to
-- set pi to 3.14159

area :: Float -> Float
area r = let pi = 3.14159 in pi * r ^ 2

-- Case expressions

-- Create a function, constant, that returns the natural constant given
-- it's name. Use case expressions. E.g.: constant "pi" -> 3.14159.
-- Names and values:
--   pi   = 3.14159
--   e    = 2.71828
--   gold = 1.61803

constant :: String -> Double
constant s = case s of "pi"   -> 3.14159
                       "e"    -> 2.71828
                       "gold" -> 1.61803
