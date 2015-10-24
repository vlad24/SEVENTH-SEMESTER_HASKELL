shiftR list = list ++ [0]
shiftL list = 0:list
pascal = [1] ++ map(\l -> zipWith (+) (shiftL l) (shiftR l))