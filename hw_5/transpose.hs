transpose matrix | any (== []) matrix = [] 
                 | otherwise          = (getFirstColumn matrix):(transpose (cutFirstColumn matrix))
                 where
                      getFirstColumn matrix = [head(row) | row <- matrix]
                      cutFirstColumn matrix = [tail(row) | row <- matrix]