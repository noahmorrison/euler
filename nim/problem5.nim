## Smallest multiple
##
## 2520 is the smallest number that can be divided by each of the
## numbers from 1 to 10 without any remainder.
##
## What is the smallest positive number that is evenly divisible
## by all of the numbers from 1 to 20?
##
## ans: 232792560


proc smul(num, bot, top: int): bool =
    for i in bot..top:
        if num mod i != 0:
            return false
    return true

proc ans(top: int): int =
    var num = 1
    while true:
        if smul(num, 1, top):
            return num
        num.inc

echo ans(20)
