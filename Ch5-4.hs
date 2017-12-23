replicate' :: Int -> a -> [a]
replicate' x a = [a | _ <- [1..x]]