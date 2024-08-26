{-# LANGUAGE DeriveFunctor #-}

import Data.List (isPrefixOf)

data Pair a b = Pair a b
    deriving (Show, Eq) -- inheritance jesa hai

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

-- Record bolte hai
data Element = Element
    { name         :: String
    , symbol       :: String
    , atomicNumber :: Int
    } deriving (Show, Eq)

tupleToElem :: (String, String, Int) -> Element
tupleToElem (n, s, a) = Element { name = n, symbol = s, atomicNumber = a }

elemToTuple :: Element -> (String, String, Int)
elemToTuple e = (name e, symbol e, atomicNumber e)

-- | matlab or ..ya to ye ya to wo
data Shape = Circle Float | Rect Float Float
    deriving (Show, Eq)


area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rect d h) = d * h

circ :: Shape -> Float
circ (Circle r) = 2.0 * pi * r
circ (Rect d h) = 2.0 * (d + h)

prodToSum :: (a, Either b c) -> Either (a, b) (a, c)
prodToSum (x, e) = case e of
    Left y  -> Left (x, y)
    Right z -> Right (x, z)

sumToProd :: Either (a, b) (a, c) -> (a, Either b c)
sumToProd e = case e of
    Left (x, y) -> (x, Left y)
    Right (x, z) -> (x, Right z)

main :: IO ()
main = do
    let pair = Pair 1 "one"

    print $ show pair
    print $ show (swap (1, "one"))

    let element = Element "Hydrogen" "H" 1
    print $ show element
    print $ show (elemToTuple element)
    print $ show (tupleToElem (elemToTuple element))

    let circle = Circle 5
    let rect = Rect 4 6
    print $ show (area circle)
    print $ show (area rect)
    print $ show (circ circle)
    print $ show (circ rect)

    let exampleProd = (1, Left "Hello")
    let exampleSum = prodToSum exampleProd
    print $ "product to sum: " ++ show exampleSum
    print $ "sum to product: " ++ show (sumToProd exampleSum)
