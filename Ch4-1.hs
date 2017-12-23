halve :: [a] -> ([a], [a])
halve xs
  | even (length xs) == True = (take (length xs `div` 2)  xs, drop (length xs `div` 2) xs)
  | otherwise = (xs, xs)