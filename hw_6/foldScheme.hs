--New version for calculation of totalResistance, etc.

data Scheme = Element Float | Sequential Scheme Scheme | Parallel Scheme Scheme 
------------------------------------------------------
foldScheme f acc connection@(Element r) = f connection acc r

foldScheme f acc connection@(Sequential seq1 seq2) = let 
                                                         result1  = foldScheme f acc seq1
                                                         result2  = foldScheme f acc seq2
                                                      in f connection result1 result2
foldScheme f acc connection@(Parallel par1 par2) =    let 
                                                          result1  = foldScheme f acc par1
                                                          result2  = foldScheme f acc par2
                                                       in f connection result1 result2
------------------------------------------------------
countElementsF   _  x y = x + y
------------------------------------------------------
totalResistanceF (Element    r    ) x y = r
totalResistanceF (Sequential s1 s2) x y = x + y
totalResistanceF (Parallel   p1 p2) x y = (x * y) / (x + y)
------------------------------------------------------
test1 = foldScheme countElementsF   0 (Parallel (Element 2) (Sequential (Element 1) (Element 1)))
test2 = foldScheme totalResistanceF 0 (Parallel (Element 2) (Sequential (Element 1) (Element 1)))
