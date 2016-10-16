main :: IO ()
main = do
    nLine <- getLine
    aLine <- getLine

    let [n, d] = map read $ words nLine :: [Int]
    let a = map read $ words aLine :: [Int]
    let a' = take n $ drop d $ cycle a

    let response = unwords $ map show a'
    putStrLn response
