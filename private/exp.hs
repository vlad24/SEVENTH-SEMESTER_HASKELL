infixl 6 :+: 
infixl 7 :*: 
data Expr = Val Int | Expr :+: Expr | Expr :*: Expr  deriving (Show, Eq) 


expand :: Expr -> Expr 
expand e = let e_new = expand_step e in 
                     if  e_new /= e then expand_step e_new else e_new
                                                                      where
                                                                       expand_step ((a :+: b) :*: c) = expand (a :*: c) :+: expand (b :*: c)
                                                                       expand_step (c :*: (a :+: b)) = expand (c :*: a) :+: expand (c :*: b)
                                                                       expand_step (a :+: b)         = (expand a :+: expand b)
                                                                       expand_step (a :*: b)         = (expand a :*: expand b)
                                                                       expand_step e                 = e

