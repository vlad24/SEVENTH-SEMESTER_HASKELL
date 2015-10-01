parts []  = False
parts [x] = False
parts (x:xs) = maxBlockLenSeeker x xs 1 (x:xs) where 
   maxBlockLenSeeker current   []   maxBlockLen  list = True                                                                              
   maxBlockLenSeeker current (y:ys) maxBlockLen  list = if (current < y) then maxBlockLenSeeker y ys (maxBlockLen + 1) list else blockCombinator list maxBlockLen where                                                                                
      blockCombinator list maxBlockLen = tryBlockLen list 2 maxBlockLen (length $ list) where
          tryBlockLen (u:us) blockLen maxBlockLen totalLen | (blockLen > maxBlockLen)                                             = False
                                                           | (mod maxBlockLen blockLen /= 0) || (mod totalLen blockLen /= 0 )    = tryBlockLen (u:us) (blockLen + 1) maxBlockLen totalLen  --try another length of block
                                                           | otherwise                                                           = if (blockGoesUp u us blockLen 1) then True else tryBlockLen (u:us) (blockLen + 1) maxBlockLen totalLen
                                                           where
                                                                blockGoesUp current   []   blockLen passedLen = (passedLen == blockLen)
                                                                blockGoesUp current (u:us) blockLen passedLen | (passedLen < blockLen)  = if (current < u) then blockGoesUp u us blockLen (passedLen + 1) else False 
                                                                                                              | (passedLen == blockLen) = blockGoesUp u us blockLen 1                                    