import Control.Monad.Instances

sklej :: Integral a => a -> a
sklej n
    | n == 1    = 1
    | otherwise = n - 1 + (sklej . floor $ tmp) + (sklej . ceiling $ tmp) where
        tmp = (/2) $ fromIntegral n

sklejList :: [Integer]
sklejList = 1 : zipWith (+) [1..] (tail >>= zipWith (+) $ replicate 2 =<< sklej_list)

main :: IO ()
-- main = putStrLn $ concat $ [ show x ++ "\n" | x <- map sklej [1..10000] ] -- run recursive version
main = putStrLn $ concat $ [ show x ++ "\n" | x <- take 10000 sklej_list ] -- display generated list
