{-
2. Without looking at the definitions from the standard prelude, define the
higher-order functions all , any, takeWhile and dropWhile.
-}

-- Answer:

--all 
all_1 :: Num a => (a -> Bool) -> [a] -> Bool
all_1 f xs = and (map f xs)

all_2 :: Num a => (a -> Bool) -> [a] -> Bool
all_2 f [] = True
all_2 f (x:xs) = (f x) && (all_2 f xs)

all_3 :: Num a => (a -> Bool) -> [a] -> Bool
all_3 f = foldr (\x y -> f x && y) True


--any
any_1 :: Num a => (a -> Bool) -> [a] -> Bool
any_1 f xs = or (map f xs)

any_2 :: Num a => (a -> Bool) -> [a] -> Bool
any_2 f = foldr (\x y -> f x || y) False


--takeWhile
takeWhile_1 :: Num a => (a -> Bool) -> [a] -> [a]
takeWhile_1 f [] = []
takeWhile_1 f (x:xs) | f x = [x] ++ takeWhile_1 f xs
                   | otherwise = []


--dropWhile
dropWhile_1 :: (a -> Bool) -> [a] -> [a]
dropWhile_1 f []      = []
dropWhile_1 f (x:xs)  | f x       = dropWhile_1 f xs
                     | otherwise = x:xs

