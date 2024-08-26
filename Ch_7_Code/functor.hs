-- prove krna hai ki maybe is a functor
data Maybe a = Nothing | Just a

instance Functor Maybe where
    fmap _ Nothing  = Nothing
    fmap f (Just x) = Just (f x)


data List a = Nil | Cons a (List a)

instance Functor List where
    fmap _ Nil          = Nil
    fmap f (Cons x t)   = Cons (f x) (fmap f t)

square :: Int -> Int
square x = x * x

main :: IO ()
main = do
    let maybeValues = Just 5
        maybeResult = fmap square maybeValues
    print maybeResult  

    let noValue = Nothing
        noValueResult = fmap square noValue
    print noValueResult  

    let listValues = Cons 1 (Cons 2 (Cons 3 Nil))
        listResult = fmap square listValues
    print listResult  

    let emptyList = Nil
        emptyListResult = fmap square emptyList
    print emptyListResult  
