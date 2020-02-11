multiples :: Int -> Int
multiples 0 = 0
multiples x = (if x `mod` 3 == 0 || x `mod` 5 == 0 then x else 0) + multiples (x-1)

-- use this function so as not to include the bound
multiples_below :: Int -> Int
multiples_below x = multiples (x-1)
