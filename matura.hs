import Control.Monad.Instances
 
fill = 1 : (zipWith (+) [1..] (tail >>= zipWith (+) $ replicate 2 =<< fill))
 
main = putStrLn $ concat [ show x ++ "\n" | x <- take 10000 fill ]

