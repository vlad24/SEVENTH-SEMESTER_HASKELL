class Shape a where
   center_x:: a -> Double
   center_y:: a -> Double
   area:: a -> Double
   perim:: a -> Double
   contains:: a -> Double -> Double -> Bool  
   
data Rect = Rect Double Double Double Double
instance Shape Rect where
   center_x (Rect _ _ cx _) = cx
   center_y (Rect _ _ _ cy) = cy
   area     (Rect x y _ _) = x*y
   perim    (Rect x y _ _) = 2*(x+y)
   contains (Rect x y cx cy) u v = ( 2 * abs(u - cx) <= x ) && ( 2 * abs(v - cy) <= y )

data Circle = Circle Double Double Double
instance Shape Circle where
   center_x (Circle _ cx _) = cx
   center_y (Circle _ _ cy) = cy
   area     (Circle r _ _) = 3.14*r*r
   perim    (Circle r _ _) = 2*3.14*r
   contains (Circle r cx cy) u v =  (u - cx)^2 + (v - cy)^2 <= r^2