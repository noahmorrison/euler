---
-- Largest prime factor
---
-- The prime factors of 13195 are 5, 7, 13 and 29.
--
-- What is the largest prime factor of the number 600851475143 ?
---
-- ans: 6857
---


factorize :: Integer -> [Integer]
factorize n = factors n [2..]
    where
        factors n nums@(x:xs)
            |x * x > n = [n|n>1]
            |r == 0    = x:factors q nums
            |otherwise = factors n xs
            where
                (q,r) = quotRem n x


ans :: Integer -> Integer
ans n = maximum $ factorize n


main :: IO ()
main = putStrLn . show $ ans 600851475143
