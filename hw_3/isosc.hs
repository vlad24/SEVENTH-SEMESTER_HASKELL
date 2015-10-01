dist (x,y) (z,e) = sqrt ((x - z) ^ 2 + (y - e) ^ 2)

isosc k h t | a == b = True
            | a == c = True
            | b == c = True
            | otherwise = False
                               where 
                               a = dist k h 
                               b = dist h t
                               c = dist k t