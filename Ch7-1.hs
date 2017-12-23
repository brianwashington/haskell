add' :: Int -> Int -> Int
add' x y = x + y

mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z

map' :: (a -> b) -> ([a] -> [b])
map' f [] = []
map' f (x:xs) = f x : map' f xs


{- a -> (b -> ([a] -> [b]) ) - default

(a -> b) -> ([a] -> [b]) - manual -}