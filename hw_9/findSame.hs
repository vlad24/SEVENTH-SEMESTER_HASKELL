findSame :: Eq a => [a] -> Maybe a
findSame [] = Nothing
findSame list = findS list (\t -> False) where
   findS [] _ = Nothing
   findS (x:xs) cond | cond x = Just x
                     | otherwise = findS xs (\t -> cond t || (t == x))

findSame1 [] = error "Nothing found!"
findSame1 list = findS1 list (\t -> False) where
   findS1 [] _ = error "Nothing found!"
   findS1 (x:xs) cond | cond x = x
                      | otherwise = findS1 xs (\t -> cond t || t == x)