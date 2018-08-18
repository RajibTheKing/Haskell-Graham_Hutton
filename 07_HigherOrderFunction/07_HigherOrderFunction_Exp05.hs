{-
5. Explain why the following definition is invalid:
sumsqreven = compose [sum, map (↑2), filter even ]

-}

-- Answer:

--"compose" is not defined. (What the fuck is this?? :P )
--sum is inside the list comprehension. (Are you kidding me?? :O)
-- Syntax is not right. (I never seen such expression. :D)


--Function composition looks like this in Haskell:
--sumsqreven = sum . map (^2) . filter even
