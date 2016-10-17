import Data.List

main = do
  getLine
  ysLine <- getLine

  let ys = words ysLine

  let response = if ys == nub ys
                 then "YES"
                 else "NO"
  putStrLn response
