import Data.List

coins _  0 = [[]]
coins xs n = [c:r | (c:cs) <- tails xs, c <= n, r <- coins (c:cs) (n-c)]
