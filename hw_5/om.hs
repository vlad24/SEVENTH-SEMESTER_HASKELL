data Scheme = Element Float | Sequential Scheme Scheme | Parallel Scheme Scheme 

totalResistance (Element res) = res
totalResistance (Sequential seq1 seq2) = (totalResistance(seq1) + totalResistance(seq2))
totalResistance (Parallel par1 par2) = (totalResistance(par1) * totalResistance(par2)) / (totalResistance(par1) + totalResistance(par2))

test = totalResistance (Sequential (Parallel (Element 4) (Element 4)) (Element 3))