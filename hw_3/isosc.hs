import Data.List
isosc (x1, y1) (x2, y2) (x3, y3) =  (length (nub distances) /= (length distances)) where
      distances = [ (x2 - x1)^2 + (y2 - y1)^2 , (x3 - x2)^2 + (y3 - y2)^2,  (x3 - x1)^2 + (y3 - y1)^2 ]

