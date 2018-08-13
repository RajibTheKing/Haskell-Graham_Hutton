{-
4. Define a recursive function merge :: Ord a ⇒ [a ] → [a ] → [a] that
merges two sorted lists to give a single sorted list. For example:
> merge [2, 5, 6] [1, 3, 4]
[1, 2, 3, 4, 5, 6]
Note: your definition should not use other functions on sorted lists such
as insert or isort , but should be defined using explicit recursion.
-}



--merge [1,6,8] [2,3,7] => [1, 2, 3, 6, 7, 8]

myMerge :: Ord a => [a] -> [a] -> [a]

myMerge [] ys = ys 
myMerge xs [] = xs 

myMerge (x:xs) (y:ys)| x<=y = [x] ++ myMerge xs (y:ys)
                     | otherwise = [y] ++ myMerge (x:xs) ys