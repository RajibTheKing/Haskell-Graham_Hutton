myLast :: [a] -> a
myLast [] = error "Oops!"
myLast (x:[]) = x
myLast xs = xs !! (length xs - 1)

