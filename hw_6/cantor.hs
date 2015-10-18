transposition (x,y) = (y,x)

reflected listOfPairs = map transposition listOfPairs

cantor = cantor_step 1
                  where cantor_step n = let pairs = [(n,x) | x <- [1..n - 1]] in [(n,n)] ++ pairs ++ reflected pairs ++ cantor_step (n + 1)
