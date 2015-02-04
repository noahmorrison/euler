## Largest palindrome product
##
## A palindromic number reads the same both ways. The largest palindrome
## made from the product of two 2-digit numbers is 9009 = 91 × 99.
##
## Find the largest palindrome made from the product of two 3-digit numbers.
##
## ans: 906609

import strutils

proc reverse(str): string =
    var result = ""
    for c in str:
        result = c & result
    return result


proc isPalindrom(num: int): bool =
    num.intToStr == num.intToStr.reverse


proc ans(num: int): int =
    var prods: seq[int] = @[]

    for x in 500..999:
        for y in 500..999:
            var prod = x * y
            if prod.isPalindrom:
                prods = prods & prod

    return prods.max


echo ans(99)
