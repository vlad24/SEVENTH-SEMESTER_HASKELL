sumprod [] = 0
sumprod [x] = x
sumprod (x:xs) = sum $ map (\(u,v) -> u * v) (zip (x:xs) xs)
