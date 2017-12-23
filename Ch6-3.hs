(^) :: Int -> Int -> Int
(^) _ 0 = 1
(^) m n = m * ((Main.^) m (n-1))