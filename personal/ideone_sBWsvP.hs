import Data.List
import Control.Monad

numOfSplits :: Integer -> Integer
numOfSplits a
  | (abs a) > 500 = -1
  | (abs a) == 0 = 0
  | otherwise = intzahler $  makeChange [200,100,50,20,10,5,2,1] (abs a) 200

intzahler :: [[Integer]] -> Integer
intzahler array
  | array == [] = 0
  | otherwise = 1 + intzahler (tail array)

makeChange :: [Integer] -> Integer -> Integer -> [[Integer]]
makeChange coins amount maxCoins
  | amount < 0  = []
  | amount == 0 = [[]]
  | null coins  = []
  | amount `div` maximum coins > maxCoins = [] -- optimisation
  | amount > 0  =
    do x <- coins
       xs <- makeChange (filter (<= x) coins) (amount - x) (maxCoins - 1)
       guard $ genericLength (x:xs) <= maxCoins
       return (x:xs)

main = do
  let n = 180
  putStrLn $ "numOfSplits " ++ show n ++ " = " ++ show (numOfSplits n)
