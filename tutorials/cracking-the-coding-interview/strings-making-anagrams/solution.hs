import qualified Data.Set as S

count :: (a -> Bool) -> [a] -> Int
count pred = length . filter pred

minDeletions :: String -> String -> Int
minDeletions a b = minDeletions' a b S.empty 0

minDeletions' :: String -> String -> S.Set Char -> Int -> Int
minDeletions' a "" _ dels = dels + length a
minDeletions' "" b _ dels = dels + length b
minDeletions' a b seen dels = minDeletions' a' b' seen' dels'
  where c = head a
        aCount = count (== c) a
        bCount = count (== c) b
        dels' = dels + abs (aCount - bCount)
        seen' = S.insert c seen
        a' = filter (\x -> not $ S.member x seen') a
        b' = filter (\x -> not $ S.member x seen') b

main :: IO ()
main = do
    a <- getLine
    b <- getLine
    let dels = minDeletions a b
    putStrLn $ show dels
