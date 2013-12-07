import Data.List

sklej :: Integral a => a -> a
sklej n
    | n == 1    = 1
    | otherwise = n - 1 + (sklej . floor $ tmp) + (sklej . ceiling $ tmp)
         where
           tmp = (/2) $ fromIntegral n

sklejList :: [Integer]
sklejList = 1 : zipWith (+) [1..] (tail >>= zipWith (+) $ replicate 2 =<< sklejList)

main :: IO ()
-- main = putStrLn $ concat $ [ show x ++ "\n" | x <- map sklej [1..10000] ] -- run recursive version
main = putStrLn $ intercalate "\n" $ map show $ take 10000 sklejList -- display generated list
