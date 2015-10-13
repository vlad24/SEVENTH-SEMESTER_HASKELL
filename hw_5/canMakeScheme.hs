data Scheme = Element Float | Sequential Scheme Scheme | Parallel Scheme Scheme 

totalResistance (Element res) = res
totalResistance (Sequential seq1 seq2) = (totalResistance(seq1) + totalResistance(seq2))
totalResistance (Parallel par1 par2) = let  {res1 = totalResistance(par1); res2 = totalResistance(par2)} in (res1 * res2) / (res1 + res2)

test = totalResistance (Sequential (Parallel (Element 4) (Element 4)) (Element 3))

canMakeScheme []     0  = True
canMakeScheme []     _  = False
canMakeScheme [r]    R  = (r == R)
canMakeScheme (r:rs) R  = connect r rs R


schemes [r] = [Element r]
schemes (r:rs) = let smallerSchemes = schemes $ rs in 
                                       smallerSchemes ++ (getSeqSchemes lessSchemes) ++ 
									   
									  
getSeqSchemes  schemeList = map (\scheme -> Sequential scheme (Element r)) schemeList