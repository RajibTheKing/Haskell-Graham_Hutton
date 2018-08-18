{-
4. Using foldl , define a function dec2int :: [Int ] -> Int 
that converts a decimal number into an integer. 
For example: dec2int [2, 3, 4, 5] => 2345
-}

-- Answer:

dec2int :: [Int] -> Int
dec2int [] = 0
dec2int xs = sum [ w * x | (w, x) <- zip weights (reverse xs)]
                 where
                 weights = iterate (*10) 1


dec2int' :: [Int] -> Int
dec2int' = foldl (\x y -> x*10 + y) 0




