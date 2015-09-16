minsum [] = 0
minsum [x] = x
minsum (x:y:xs) = reallyMin (x:y:xs) (x + y) where
                                                  reallyMin [] m       = m
                                                  reallyMin [x] m      = m
                                                  reallyMin (x:y:xs) m = if (x + y < m) then reallyMin (y:xs) (x + y) else reallyMin (y:xs) m 