is_even :: Int -> Bool
is_even x = x `mod` 2 == 0

-- returns an array of Fibonacci numbers smaller than the first argument
fib :: Int -> Int -> Int -> [Int]
fib limit a b
  | b > limit = [a]
  | otherwise = a : fib limit b (a+b)

-- sums all even Fibonacci numbers
sum_even_fib :: Int -> Int
sum_even_fib limit = sum (filter is_even (fib limit 0 1))
