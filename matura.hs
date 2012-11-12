import Control.Monad.Instances
 
sklej_gen = 1 : (zipWith (+) [1..] (tail >>= zipWith (+) $ replicate 2 =<< fill))
 
main = putStrLn $ concat [ show x ++ "\n" | x <- take 10000 sklej_gen ]

