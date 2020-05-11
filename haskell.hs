--Source: https://wiki.haskell.org/99_questions/Solutions/26
combinations :: Int -> [a] -> [[a]]--Takes an integer and outputs it as a list of an integer
combinations 0 _ = [[]]--takes 0 and creates empty list
combinations n xs = [ xs !! i : x | i <- [0..(length xs)-1] 
                                  , x <- combinations (n-1) (drop (i+1) xs) ]--creates a list of combinations by recursively calling itself
