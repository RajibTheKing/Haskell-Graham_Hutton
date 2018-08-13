{-
3. Without looking at the definitions from the standard prelude, define the
following library functions using recursion:

• Decide if all logical values in a list are True:
and :: [Bool ] → Bool

• Concatenate a list of lists:
concat :: [[a ]] → [a ]

• Produce a list with n identical elements:
replicate :: Int → a → [a ]

• Select the nth element of a list:
(!!) :: [a ] → Int → a

• Decide if a value is an element of a list:
elem :: Eq a ⇒ a → [a ] → Bool


Note: most of these functions are in fact defined in the prelude using
other library functions, rather than using explicit recursion.


-}
--Answer:
--and [True, False, True] => False

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs


--concate [[1,2], [3,4]] => [1, 2, 3, 4]

myConcate :: [[a]] -> [a]
myConcate [] = []
myConcate (xs:xss) = xs ++ myConcate xss


-- [1,2,3,4,5,6] !! 2 => 3

(!!!) :: [a] -> Int -> a
[] !!! n = error "Oops!"
xs !!! 0 = head xs
(x:xs) !!! n = xs !!! (n-1)


--elem 2 [1,2,3] => True 

myElem :: Eq a => a -> [a] -> Bool 
myElem n [] = False
myElem n (x:xs) = myElem n xs || x == n 




