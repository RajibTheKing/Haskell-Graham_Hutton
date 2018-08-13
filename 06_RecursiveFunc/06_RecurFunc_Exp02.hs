{-
2. Using the definitions given in this chapter, show how length [1, 2, 3],
drop 3 [1, 2, 3, 4, 5], and init [1, 2, 3] are evaluated.
-}
--Answer:

{-
        length [1,2,3]
      = 1 + length [2,3]
      = 1 + 1 + length [3]
      = 1 + 1 + 1 + length []
      = 1 + 1 + 1 + 0
      = 3
	  
        drop 3 [1,2,3,4,5]
      = drop 2 [2,3,4,5]
      = drop 1 [3,4,5]
      = drop 0 [4,5]
      = [4,5]
	  
        init [1,2,3]
      = 1:init [2,3]
      = 1:2:init[3]
      = 1:2:[]
      = [1,2] 
-}


--My Custom Solutions:

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
