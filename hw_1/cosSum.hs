sumcos 0 = 1
sumcos n = sumcosHelper 0 0 1 n where
           sumcosHelper upperSum lowerSum i n | (i > n)   = cos(upperSum) / lowerSum
                                              | otherwise = sumcosHelper (upperSum + i) (lowerSum + cos(i)) (i + 1) n