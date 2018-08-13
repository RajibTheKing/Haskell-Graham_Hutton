{-
6. Using the five step process, 
i) define the library functions that calculate the sum of a list of numbers, 
ii) take a given number of elements from the start of a list, and 
iii) select the last element of a non-empty list.
-}


--i) sum [1, 2, 3] => 6
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + (mySum xs)


-- ii) take 2 [1, 2, 3] => [1, 2]

myTake :: Int -> [Int] -> [Int]
myTake 0 xs = [] 
myTake n [] = []
myTake n (x:xs) = [x] ++ (myTake (n-1) xs) 



--iii) last [1, 2, 3] 3
myLast :: [Int] -> Int
myLast [] = error "Opps! no values found"
myLast [x] = x
myLast (x:xs) = myLast xs
