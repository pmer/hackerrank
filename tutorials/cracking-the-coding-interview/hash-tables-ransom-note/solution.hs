import qualified Data.Map.Strict as M

type WordCount = M.Map String Int

countWords :: [String] -> WordCount
countWords ws = M.fromListWith (+) pairs
  where pairs = map (\w -> (w, 1)) ws

contains :: WordCount -> WordCount -> Bool
contains sup sub = all hasEnough $ M.keys sub
  where hasEnough w = get w sup >= get w sub
        get = M.findWithDefault 0

canMakeRandomNote :: [String] -> [String] -> Bool
canMakeRandomNote mag msg = contains magCounts msgCounts
  where magCounts = countWords mag
        msgCounts = countWords msg

main = do
    nLine <- getLine
    magLine <- getLine
    msgLine <- getLine

    let mag = words magLine
    let msg = words msgLine

    let response = if canMakeRandomNote mag msg
                   then "Yes"
                   else "No"
    putStrLn response
