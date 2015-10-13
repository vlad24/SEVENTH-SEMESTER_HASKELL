frame n = [getFrameRow i n | i <- [1..n]] where
getFrameRow i k | (i == 1) || (i == k) = [1 | x <- [1..k]]
                | otherwise            = [if (x == 1) || (x == k) then 1 else 0 | x <- [1..k]]