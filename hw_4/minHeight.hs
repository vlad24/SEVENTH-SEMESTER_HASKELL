data Tree = Empty | Node Integer Tree Tree

minHeight Empty = 0
minHeight (Node val left right) = minseeker (Node val left right) 0 where
     minseeker        Empty           height = height
     minseeker (Node val Empty right) height = height
     minseeker (Node val left Empty)  height = height
     minseeker (Node val left right)  height =  minimum [(minseeker left (height + 1)), (minseeker right (height + 1))]
