import Control.Monad.Instances

ssklej :: Integral a => a -> a
sklej n | n == 1    = 1
        | otherwise = n - 1 + (sklej . floor $ tmp) + (sklej . ceiling $ tmp)
                      where tmp = (/2) $ fromIntegral n

sklej_gen :: [Integer]
sklej_gen = 1 : (zipWith (+) [1..] (tail >>= zipWith (+) $ replicate 2 =<< sklej_gen))

main :: IO ()
-- main = putStrLn $ concat $ [ show x ++ "\n" | x <- map sklej [1..10] ]
main = putStrLn $ concat [ show x ++ "\n" | x <- take 10000 sklej_gen ]
