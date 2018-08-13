{-
1. Define the exponentiation operator ↑ for non-negative integers using the
same pattern of recursion as the multiplication operator ∗, and show
how 2 ↑ 3 is evaluated using your definition.
-}
--Answer:

easyPower :: Integer -> Integer -> Integer
easyPower n 0 = 1
easyPower n m = n * (easyPower n (m-1))


 -- myPower n m = n ^ m

myEven :: Integer -> Bool
myEven n = n `mod` 2 == 0 


myPower :: Integer -> Integer -> Integer

myPower n 0 = 1

myPower n m | myEven m = (myPower n (m `div` 2)) * (myPower n (m `div` 2))
            | otherwise = (myPower n (m-1)) * n


