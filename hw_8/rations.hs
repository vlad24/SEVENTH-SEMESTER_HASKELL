data Ration = Rat Int Int

isPositive (Rat a b) = (a * b > 0)

instance Num Ration where
   (Rat a b) + (Rat c d) = let u = a * d + c * b
                               v = b * d
                               w = gcd u v
                           in (Rat (div u w) (div v w))

instance Eq Ration where
   (Rat a b) == (Rat c d) = (a * d == c * b)

instance Ord Ration where
   r1@(Rat a b) < r2@(Rat c d)  | isPositive r1 && isPositive r2 = (abs(a * d) < abs(c * b))
                                | isPositive r2 = True
                                | isPositive r1 = False
                                | otherwise = abs(a * d) > abs(c * b)
                                
   r1@(Rat a b) > r2@(Rat c d)  = not ((r1 == r2) || (r1 < r2))
   
instance Show Ration where
   show (Rat a b) = (show a) ++ "/" ++ (show b)