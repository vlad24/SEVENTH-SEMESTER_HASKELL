f 0 = 0
f n = squarer 2 n where
      squarer x 0 = x
      squarer x n = (squarer x (n - 1)) * (squarer x (n - 1)) 