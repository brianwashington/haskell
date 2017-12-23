map' :: (a -> b -> b) -> ([a] -> [b])
map' f = foldr (\x xs -> f x : xs) []