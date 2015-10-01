data Candy = Sweet String Float Float | Cake String Float

get_price (Sweet name price weight) = price * weight
get_price (Cake name price) = price

totalPrice goods  = sum $ map get_price goods

test = totalPrice [Sweet "SugarPleasure" 0.2 250, Sweet "ChocoChoc" 4 12.5, Cake "BlackKing" 900]




