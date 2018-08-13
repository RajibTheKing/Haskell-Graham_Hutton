{-
5. Using merge, define a recursive function msort :: Ord a ⇒ [a ] → [a ]
that implements merge sort, in which the empty list and singleton lists
are already sorted, and any other list is sorted by merging together the
two lists that result from sorting the two halves of the list separately.
Hint: first define a function halve :: [a ] → [([a ], [a ])] that splits a list
into two halves whose length differs by at most one.
-}



--merge [1,6,8] [2,3,7] => [1, 2, 3, 6, 7, 8]

myMerge :: Ord a => [a] -> [a] -> [a]

myMerge [] ys = ys 
myMerge xs [] = xs 

myMerge (x:xs) (y:ys)| x<=y = [x] ++ myMerge xs (y:ys)
                     | otherwise = [y] ++ myMerge (x:xs) ys

halve :: [a] -> ([a], [a])
halve xs = (take ((length xs) `div` 2) xs, drop ((length xs) `div` 2) xs)


myMsort :: Ord a => [a] -> [a]
myMsort [] = []
myMsort [x] = [x]
myMsort xs = myMerge (myMsort leftHalf) (myMsort rightHalf)
              where
              (leftHalf, rightHalf) = halve xs
