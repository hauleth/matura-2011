sklej n | n == 1 = 1
        | n `mod` 2 == 0 = n - 1 + 2 * sklej (n `div` 2)
        | n `mod` 2 /= 0 = n - 1 + sklej ((n-1) `div` 2) + sklej((n+1) `div` 2)

main = mapM (print . sklej) [1..10000]

