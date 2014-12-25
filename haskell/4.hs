---
-- Largest palindrome product
---
-- A palindromic number reads the same both ways.
-- The largest palindrome made from the product of two
-- 2-digit numbers is 9009 = 91 × 99.
--
-- Find the largest palindrome made from the product of two 3-digit numbers.
---
-- ans: 906609
---


isPalindrome :: (Show a) => a -> Bool
isPalindrome n = one == eno
    where
        one = show n
        eno = reverse $ show n


ans :: Integer
ans = maximum $ filter isPalindrome prods
    where
        prods = map product nums
        nums = [[x,y] | x <- [100..999],
                        y <- [100..999]]


main :: IO ()
main = putStrLn . show $ ans
