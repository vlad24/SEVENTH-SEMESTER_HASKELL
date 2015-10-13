data Tree = Empty | Node Integer Tree Tree

foldlTree f accumulator Empty = accumulator
foldlTree f accumulator (Node t treeLeft treeRight) = foldlTree f (f (foldlTree f accumulator treeLeft) t) treeRight

foldrTree f accumulator Empty = accumulator
foldrTree f accumulator (Node t treeLeft treeRight) = foldrTree f (f  t (foldrTree f accumulator treeRight )) treeLeft

foldTree = foldrTree

test = foldTree (*) 1 (Node 1 (Node 2 (Node 3 Empty Empty) Empty) (Node 4 Empty Empty))