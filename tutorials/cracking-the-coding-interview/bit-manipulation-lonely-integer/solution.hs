import Data.Bits (setBit, clearBit, testBit, zeroBits)

minBit = 0 :: Int
maxBit = 100 :: Int

findBit :: Integer -> Int
findBit bits = head $ filter (testBit bits) [0..100]

toggleBit :: Integer -> Int -> Integer
toggleBit bits bit = if testBit bits bit
                     then clearBit bits bit
                     else setBit bits bit

toggleAllBits :: [Int] -> Integer
toggleAllBits bits = foldl toggleBit zeroBits bits

main :: IO ()
main = do
    nLine <- getLine
    aLine <- getLine

    let a = map read $ words aLine :: [Int]

    let bitmap = toggleAllBits a
    let remainingBit = findBit bitmap

    putStrLn $ show remainingBit
