data Tree = Empty | Node Integer Tree Tree
foldTree f acc Empty = acc
foldTree f acc (Node value left right) = let {res_left  = foldTree f acc left ; res_right = foldTree f acc right} in f value res_left res_right

g v x y = v^2 + x + y
sumSqr = foldTree g 0