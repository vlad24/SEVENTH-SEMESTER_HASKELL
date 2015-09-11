g 0 = 0
g n = gRecursive 1 n where
      gRecursive i n | (i == n)  = n
	                 | otherwise = i + 10 * (gRecursive (i + 1) n)