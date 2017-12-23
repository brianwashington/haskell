third1 :: [a] -> a
third1 xs
  | length xs >= 3 = head (tail (tail xs))
  | otherwise = head xs

third2 :: [a] -> a
third2 xs
  | length xs >= 3 = xs !! 2
  | otherwise = head xs

third3 :: [a] -> a
third3 xs = 
  if length xs >= 3 then xs !! 2 else head xs