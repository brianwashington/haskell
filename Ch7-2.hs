all' :: (a -> Bool) -> [a] -> Bool
--all' p = and . map p
all' _ [] = True
all' p (x:xs)
  | p x = all' p xs
  | otherwise = False

any' :: (a -> Bool) -> [a] -> Bool
--any' p = or . map p
any' _ [] = False
any' p (x:xs)
  | p x = True
  | otherwise = any' p xs

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (x:xs)
  | p x = x : takeWhile' p xs
  | otherwise = []

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs)
  | p x = dropWhile' p xs
  | otherwise = (x:xs)