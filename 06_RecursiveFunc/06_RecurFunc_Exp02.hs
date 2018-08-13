{-
2. Using the definitions given in this chapter, show how length [1, 2, 3],
drop 3 [1, 2, 3, 4, 5], and init [1, 2, 3] are evaluated.
-}
--Answer:

-- drop 3 [1, 2, 3, 4, 5]
-- => [4, 5]

myDrop :: Int -> [Int] -> [Int]

myDrop 0 xs = xs
myDrop n (x : []) = []
myDrop n (x : xs) = myDrop (n-1) xs





-- init [1, 2, 3]
-- => [1, 2]

myInit :: [Int] -> [Int]
myInit [] = error "Opss!!"
myInit (x:xs) | length xs == 1 = [x] 
              | otherwise =  [x] ++ myInit xs



-- length [1, 2, 3]
-- => 3

myLength :: [Int] -> Int
myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)