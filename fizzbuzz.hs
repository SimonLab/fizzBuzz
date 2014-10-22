-- Simple FizzBuzz
import Data.List
fizzBuzz :: [Int] -> String
fizzBuzz [] = []
fizzBuzz (x:xs)   | mod x 15 == 0 = "FizzBuzz" ++ fizzBuzz xs
                  | mod x 3  == 0 = "Fizz" ++ fizzBuzz xs
                  | mod x 5  == 0 = "Buzz" ++ fizzBuzz xs
                  | otherwise     = show x ++ fizzBuzz xs


fizzBuzz' :: [Int] -> String
fizzBuzz' = intercalate "," . map toFizzBuzz
toFizzBuzz :: Int -> String
toFizzBuzz i | mod i 15 == 0  = "FizzBuzz"
             | mod i 3  == 0  = "Fizz"
             | mod i 5  == 0  = "Buzz"
             | otherwise      = show i
