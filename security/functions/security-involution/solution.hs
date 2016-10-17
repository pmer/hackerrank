import qualified Data.Vector as V
import Data.Vector ((!))

fromIndexes :: V.Vector (Int, Int) -> V.Vector Int
fromIndexes indexes = V.update zeros indexes
  where zeros = V.replicate (V.length indexes) 0

invert :: V.Vector Int -> V.Vector Int
invert f = fromIndexes $ V.map swap $ V.indexed f
  where swap (a,b) = (b,a)

main = do
  nLine <- getLine
  ysLine <- getLine

  let n = read nLine :: Int
  let ys = map read $ words ysLine :: [Int]

  let f = V.fromList (0:ys)
  let fInv = invert f

  let xs = [1..n]
  let ys = map (f!) xs
  let xs' = map (fInv!) ys

  let response = if xs == xs'
                 then "YES"
                 else "NO"
  putStrLn response
