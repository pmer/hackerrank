import Data.Maybe (maybe)

type Query = String
type Output = String
type Stack = [Int]
data Queue = Queue Stack Stack

push :: Queue -> Int -> Queue
push (Queue b []) x = Queue [] (x:(reverse b))
push (Queue b f) x = Queue (x:b) f

pop :: Queue -> Queue
pop (Queue b [x]) = Queue [] (reverse b)
pop (Queue b (x:f)) = Queue b f

front :: Queue -> Int
front (Queue b (x:f)) = x

runQuery :: Queue -> Query -> (Queue, Maybe Output)
runQuery q query = runQuery' q (words query)

runQuery' :: Queue -> [String] -> (Queue, Maybe Output)
runQuery' q ["1",x] = (push q (read x), Nothing)
runQuery' q ["2"] = (pop q, Nothing)
runQuery' q ["3"] = (q, (Just $ show $ front q))

handleQuery :: (Queue, [Output]) -> Query -> (Queue, [Output])
handleQuery (q, output) query = (q', output')
  where (q', newOutput) = runQuery q query
        output' = maybe output (\line -> line:output) newOutput

handleQueries :: [Query] -> [Output]
handleQueries queries = reverse . snd $ foldl handleQuery (Queue [] [], []) queries

main :: IO ()
main = interact $ unlines . handleQueries . drop 1 . lines
