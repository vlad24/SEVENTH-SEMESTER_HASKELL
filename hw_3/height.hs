data Tree = Empty | Node Integer Tree Tree


height (Empty) = 0
height (Node value Empty Empty) = 0
height (Node value left right) = 1 + max  ( height(left) )  ( height(right) )
