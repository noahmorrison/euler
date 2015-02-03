## Largest prime factor
##
## The prime factors of 13195 are 5, 7, 13 and 29.
##
## What is the largest prime factor of the number 600851475143 ?
##
## ans: 6857

proc lpf(n: var int): int =
    var i = 2

    while i <= n:
        if n mod i == 0:
            n = (n / i).int
            i.dec
        i.inc

    return i

var number = 600851475143.int
echo lpf(number)
