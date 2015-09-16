checkSum [] = False
checkSum (x:xs) = if (filter (\sum -> (sum == 10)) (map (\t -> x + t) xs)) /= [] then True else checkSum xs