import Control.Monad

helloWorlds n = replicateM_ n $ putStrLn "Hello World"

-- Alternative solution
--helloWorlds n = putStrLn $ unlines $ replicate n "Hello World"

main = do
  n <- readLn :: IO Int
  helloWorlds n
