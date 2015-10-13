dividers n = [d | d <- [1..(n - 1)], mod n d == 0]

sumDiv = sum.dividers

perfects n = [p | p <- [2..n], sumDiv p == p]
