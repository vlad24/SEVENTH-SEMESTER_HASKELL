data Tree = Empty | Node Integer Tree Tree

getLeft (Node val left right) = left
getRight (Node val left right) = right

isEmpty Empty = True
isEmpty _ = False

isLeaf (Node val left right) = isEmpty(left) && isEmpty(right)

--------------

minHeight Empty = 0
minHeight (Node val left right) = wideseeker [0] [(Node val left right)] where
wideseeker (d:ds) (n:ns)     | isLeaf(n)               = d
                             | isEmpty(getLeft $ n)    = wideseeker (ds ++ [d + 1])        (ns ++ [getRight(n)])
                             | isEmpty(getRight $ n)   = wideseeker (ds ++ [d + 1])        (ns ++ [getLeft(n)])
                             | otherwise               = wideseeker (ds ++ [d + 1, d + 1]) (ns ++ [getLeft(n), getRight(n)])