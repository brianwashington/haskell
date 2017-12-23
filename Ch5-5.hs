pyths :: Int -> [(Int,Int,Int)]
pyths x = [(x',y',z') | x' <- [1..x], y' <- [1..x], z' <- [1..x], (x'^2) + (y'^2) == (z'^2)]