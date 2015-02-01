## Multiples of 3 and 5
##
## If we list all the natural numbers below 10 that are multiples
## of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
##
## Find the sum of all the multiples of 3 or 5 below 1000.
##
## ans: 233168

proc `%`(a: int, b: int): bool =
    a mod b == 0

proc ans(limit: int): int =
    var sum: int
    for x in 1..limit - 1:
        if x % 3 or x % 5:
            sum.inc(x)

    return sum

echo ans 1_000
