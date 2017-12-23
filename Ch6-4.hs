euclid :: Int -> Int -> Int
euclid n m
  | n == m = n
  | n < m = euclid n (m-n)
  | m < n = euclid (n-m) m