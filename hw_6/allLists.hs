allLists n 1 = [ [x] | x <- [1..n]]
allLists n k = [(x_k):xs | x_k <- [1..n], xs <- allLists n (k - 1)]

