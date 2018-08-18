{-
1. Show how the list comprehension [f x | x ← xs,p x] can be re-expressed
using the higher-order functions map and filter .
-}

-- Answer:

myDouble :: Num a => a -> a
myDouble a = a * 2

myEven :: Int -> Bool
myEven x = x `mod` 2 == 0


myMap :: (a -> b) -> [a] -> [b]
myMap f xs = [f x | x <- xs]

-- TestCase 1: myMap myDouble [1,2,3,4] => [2,4,6,8]

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f xs = [x | x <- xs, f x]

-- TestCase 2: myFilter myEven [1, 2, 3, 4, 5] => [2,4]


myList :: Num a => (a -> a) -> ( a-> Bool) -> [a] -> [a]
myList f p xs = [f x | x <- xs, p x]

-- TestCase 3: myList myDouble myEven [1, 2, 3, 4, 5, 6, 7]

--The Real Answer: 
--map f (filter p xs)


