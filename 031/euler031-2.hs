main = print $ sum [ 1
                   | c200 <- [0..(200`div`200)]
                   , c100 <- [0..((200 - 200*c200                                             )`div`100)]
                   , c50  <- [0..((200 - 200*c200 - 100*c100                                  )`div`50)]
                   , c20  <- [0..((200 - 200*c200 - 100*c100 - 50*c50                         )`div`20)]
                   , c10  <- [0..((200 - 200*c200 - 100*c100 - 50*c50 - 20*c20                )`div`10)]
                   , c5   <- [0..((200 - 200*c200 - 100*c100 - 50*c50 - 20*c20 - 10*c10       )`div` 5)]
                   , c2   <- [0..((200 - 200*c200 - 100*c100 - 50*c50 - 20*c20 - 10*c10 - 5*c5)`div` 2)]
                   , 2*c2 + 5*c5 + 10*c10 + 20*c20 + 50*c50 + 100*c100 + 200*c200 <= 200
                   ]