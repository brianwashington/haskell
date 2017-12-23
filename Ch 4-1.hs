halve :: [a] -> ([a], [a])
halve xs = (take (length xs / 2) xs, drop (length xs / 2) xs)