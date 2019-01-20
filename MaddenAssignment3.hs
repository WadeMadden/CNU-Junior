range :: (Foldable t, Num p, Ord p) => t p -> p
range a
  | null a     = 0
  | otherwise  = maximum a - minimum a

sorted :: Ord a => [a] -> Bool  
sorted []       = True
sorted [x]      = True
sorted (x:y:xs) = x <= y && sorted (y:xs)

bills :: Integral d => d -> (d, d, d, d)
bills a
  | a < 0  = error "no negatives allowed"
  | a >= 0 = (billstwenty a, billsten(a - (billstwenty a * 20)), billsfive(a - (billsten a * 10)), billsone(a - (billsfive a * 5)))

billstwenty :: Integral a => a -> a
billstwenty a
  | a >= 20 = div a 20
  | a < 20  = 0

billsten :: Integral a => a -> a
billsten a
  | a >= 10 = div a 10
  | a < 10  = 0

billsfive :: Integral a => a -> a
billsfive a
  | a >= 5 = div a 5
  | a < 5  = 0

billsone :: Integral a => a -> a
billsone a
  | a >= 1 = div a 1
  | a < 1  = 0

nprime :: Int -> Integer
nprime a
  | a <= 0 = error "no negatives allowed"
  | a > 0  = primeNumberList!!(a-1)

primeNumberList :: [Integer]
primeNumberList   = primes [2..] where
    primes (p:xs) = p : primes [x|x <- xs, x `mod` p > 0]