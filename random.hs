import Data.Char

doubleMe x = x + x

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial x = x * factorial (x-1)

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort [a] = [a]
quicksort xs = 
  let pivot = last xs
      lesser = [x | x <- init xs, x <= pivot]
      greater = [x | x <- init xs, x > pivot]
  in quicksort lesser ++ [pivot] ++ quicksort greater

reversequicksort :: (Ord a) => [a] -> [a]
reversequicksort [] = []
reversequicksort [a] = [a]
reversequicksort xs = 
  let pivot = last xs
      lesser = [x | x <- init xs, x <= pivot]
      greater = [x | x <- init xs, x > pivot]
  in reversequicksort greater ++ [pivot] ++ reversequicksort lesser

mylast :: [a] -> a
mylast xs = head (drop (length xs-1) xs)

init' xs = reverse (tail (reverse xs) )

init2' :: [a] -> [a]
init2' [x] = []
init2' (x:xs) = [x] ++ init2' xs

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

add' :: Int -> (Int -> Int)
add' x y = x + y

concat' :: [[a]] -> [a]
concat' xss = [x | xs <- xss, x <- xs]

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

subs :: [a] -> [[a]]
subs [] = [[]]
subs (x:xs) = yss ++ map (x:) yss
              where yss = subs xs

perms :: [a] -> [[a]]
perms [] = [[]]
perms (x:xs) = map (x:) (perms xs)
