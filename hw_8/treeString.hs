data Tree c = Empty | Node Char (Tree c) (Tree c)

toStr :: Tree c -> String
toStr (Node c treeLeft treeRight) = ['n'] ++ [c] ++ toStr(treeLeft) ++ toStr(treeRight)
toStr (Empty) = ['e']

fromStr = fst . buildPair
    where
              buildPair ('e':xs) = (Empty, xs)
              buildPair ('n':value:values) = (Node value leftSubtree rightSubtree, rightRest) 
                                                            where
                                                                 (rightSubtree, rightRest) = buildPair leftRest
                                                                 (leftSubtree, leftRest) = buildPair values
              buildPair x = (Empty, x)


instance Show (Tree c) where
show = toStr