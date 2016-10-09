readInt :: IO Double
readInt = do
    line <- getLine
    return (read line :: Double)

main = do
    mealCost <- readInt
    tipPercent <- readInt
    taxPercent <- readInt
    let tip = mealCost * tipPercent / 100
    let tax = mealCost * taxPercent / 100
    let totalCost = mealCost + tip + tax
    putStr "The total meal cost is "
    putStr $ show $ round totalCost
    putStrLn " dollars."

