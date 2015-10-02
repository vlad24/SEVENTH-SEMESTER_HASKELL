repeatFunc f n = repeater f n where

repeater f 1 = f
repeater f m =  f.(repeater f (m - 1))
