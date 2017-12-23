import Data.Char

main = do 
        input <- getChar
        --let inputChar = input
        test2 input
        return ()

test :: IO Int
test = do x <- getChar
          return (digitToInt x)

test2 :: Char -> IO Char
test2 x = do y <- convert x
             print y
             return (x)


convert :: Char -> IO Int
convert x = return (digitToInt x)

test3 :: Int -> Int
test3 x = x