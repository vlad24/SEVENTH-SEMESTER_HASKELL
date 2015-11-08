triangle n = do
                row <- [1..n]
                col <- [1..row]
                return (10 * row + col)