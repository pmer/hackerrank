import Data.Vector (fromList, (!))

main = do
  nLine <- getLine
  ysLine <- getLine

  let n = read nLine :: Int
  let ys = map read $ words ysLine :: [Int]

  let f = fromList (0:ys)
  let f2 = map (\x -> f ! (f ! x)) [1..n]

  let response = unlines $ map show f2
  putStrLn response
