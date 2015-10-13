data Scheme = Element Float | Sequential Scheme Scheme | Parallel Scheme Scheme 

totalResistance [] = 0
totalResistance [r] = r
totalResistance (r:rs) = (totalResistance([r1]) + totalResistance(r2))
totalResistance (r1, r2) = let  {pr1 = totalResistance(r1); pr2 = totalResistance(r2)} in (pr1 * pr2) / (pr1 + pr2)

test = totalResistance [(4,4), [3]]