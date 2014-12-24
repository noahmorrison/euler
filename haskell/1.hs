---
-- Multiples of 3 and 5
---
-- If we list all the natural numbers below 10
-- that are multiples of 3 or 5, we get 3, 5, 6 and 9.
-- The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
---
-- ans: 233168
---


ans :: Integral a => a -> a
ans x = sum $ filter mul3or5 [1..x-1]
    where
        mulOf y x = x `mod` y == 0
        mul3or5 x = (mulOf 3 x) || (mulOf 5 x)


main :: IO ()
main = putStrLn . show $ ans 1000
