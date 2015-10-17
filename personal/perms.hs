perms [] = [[]]
perms xs = concatMap (\x -> map (x:) $ perms (filter (/= x) xs)) xs


