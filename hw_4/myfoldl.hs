myfoldl f acc []     = acc
myfoldl f acc (x:xs) = myfoldl f (f acc x) xs
