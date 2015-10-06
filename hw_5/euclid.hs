euclid 0 b = (0,1)
euclid a b = let prevSolution = euclid (mod b a) a
                 x1 = fst prevSolution
                 y1 = snd prevSolution 
             in (y1 - (div b a) * x1, x1) 