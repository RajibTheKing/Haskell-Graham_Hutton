myMap :: (a -> b) -> [a] -> [b]
myMap f xs = [f x | x <- xs]


