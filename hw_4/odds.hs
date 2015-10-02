oddFinder = \x y -> (mod x 2) +  y
countOdd list = foldr oddFinder 0 list

countOdd1 = sum.map (\x -> mod x 2)
