minlist [] = 0
minlist (x:xs) = findMin (x:xs) x where
                                  findMin [] m = m
                                  findMin (x:xs) m = if (x < m) then findMin xs x else findMin xs m