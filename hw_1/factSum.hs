sumfact :: Integer -> Integer
sumfact 0 = 0
sumfact n = sumfactHelper 0 1 1 n where
            sumfactHelper :: Integer -> Integer -> Integer -> Integer -> Integer
            sumfactHelper finalSum summand iteration n | (iteration > n) = finalSum
                                                       | otherwise       = sumfactHelper (finalSum + summand) (summand * (iteration + 1)) (iteration + 1) n