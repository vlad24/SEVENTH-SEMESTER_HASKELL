getSqrt :: Int -> Int
getSqrt n = truncate(sqrt(fromIntegral n))

checkNoSquares [] = True
checkNoSquares (x:xs) = checkWithLogic (x:xs) (\t -> False) where
    checkWithLogic [] _ = True
    checkWithLogic (x:xs) cond | cond x = False 
                               | otherwise = let sqrtX = getSqrt x 
                                                 sqrX = x * x
                                             in 
                                             if (sqrtX ^ 2 == x) then 
                                                                    checkWithLogic xs (\t -> cond t || t == sqrX|| t == sqrtX )
                                                                    else
                                                                    checkWithLogic xs (\t -> cond t || t == sqrX )