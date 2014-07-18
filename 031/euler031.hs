main = print $ euler031 [1, 2, 5, 10, 20, 50, 100, 200] 200

euler031 :: [Int] -> Int -> Int
euler031 _ 0 = 1
euler031 [] _ = 0
euler031 (x:xs) n = sum [euler031 xs a | a <- [n, n-x .. 0]]
