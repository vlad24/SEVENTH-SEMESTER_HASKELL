powerset [] = [[]]
powerset (x:xs)  = let smallerlists = powerset(xs) in smallerlists ++ [ (x:l) | l <- smallerlists ]
