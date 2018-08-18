{-
7. A higher-order function unfold that encapsulates a simple pattern of
recursion for producing a list can be defined as follows:
unfold p h t x	|	p x 	= []
				|otherwise 	= h x : unfold p h t (t x)
				
That is, the function unfold p h t produces the empty list if the predicate
p is true of the argument, and otherwise produces a non-empty
list by applying the function h to give the head, and the function t to
generate another argument that is recursively processed in the same way
to produce the tail of the list. For example, the function int2bin can be
rewritten more compactly using unfold as follows:
int2bin  = unfold (== 0) (‘mod‘2) (‘div‘2)

Redefine the functions chop8 , map f and iterate f using unfold .
-}

-- Answer:

unfold p h t x 
  | p x       = []
  | otherwise = h x : unfold p h t (t x)


chop8' = unfold (\x -> length x < 9) (take 8) (drop 8)

map' p f xs = unfold p f f xs

iterate' f = unfold (const False) id f


