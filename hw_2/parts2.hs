import Data.List

sortwithindexes [] = []
sortwithindexes list = sortOn (fst) (zip list [1..length(list)])

parts2 []  = False
parts2 [x] = False
parts2 list = (((mod (length $ list) 2) == 0) && (findIndexSequence (sortwithindexes list) (length (list)))) where
findIndexSequence (x:xs) l = finder xs [] (snd x) (div l 2) 1 where
finder   []   remainder   _  aimLen gotLen  = checkUp remainder aimLen
finder (x:xs) remainder  cur aimLen gotLen | (aimLen == gotLen)  = checkUp (remainder ++ (x:xs)) aimLen
                                           | otherwise           = if ((snd x) > cur) 
                                                                   then finder xs remainder        (snd x)   aimLen    (gotLen + 1) 
                                                                   else finder xs (remainder++[x])   cur     aimLen    gotLen         where
checkUp list aimLen = (length(list) == aimLen) && (checker (snd $ head list) (tail list)) where
                        checker cur []     = True
                        checker cur (x:xs) = if (cur < (snd x)) 
                                                then checker (snd x) xs 
                                                else False                                 