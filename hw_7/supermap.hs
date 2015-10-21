superMap f [] = []
superMap f (x:xs) = (f x) ++ superMap f xs
