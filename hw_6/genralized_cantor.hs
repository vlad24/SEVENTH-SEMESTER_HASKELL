allLists n 1 = [ [x] | x <- [1..n]]
allLists n k = [(x_k):xs | x_k <- [1..n], xs <- allLists n (k - 1)]

-- use laziness
contains x [] = False
contains x (y:ys) = (x == y) || (contains x ys)

--use previous functions!
allListsWithM n k m = filter (\l -> contains m l) (allLists n k)

--slow, I understand :(
generalized_cantor n = growCantor n [1..] where
    growCantor n (m:ms) = (allListsWithM m n m) ++ growCantor n ms
