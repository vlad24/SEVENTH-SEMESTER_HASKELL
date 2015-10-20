approxSum list = summer list 0 where
   summer (x:xs) acc | abs(x) < 0.0001 = acc
                     | otherwise       = summer xs (acc + x)

z = approxSum [1/(i * i) | i <- [1..]]
