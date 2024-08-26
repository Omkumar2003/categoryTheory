{-# LANGUAGE GADTs, KindSignatures, DataKinds, TypeOperators #-}

module CategoryTheoryExamples where

import Data.Maybe (fromMaybe)

-- vidwa hai bichara
data Void 

-- void to parameter mein dega kaise? absurd idea hai ....
absurd :: Void -> a
absurd = undefined -- Crash hojayega SYSHTEEEEEEM

-- Terminal
unit :: a -> ()
unit _ = ()

-- **Duality**
data Either a b = Left a | Right b

-- Example functions demonstrating the usage of Either
isLeft :: Either a b -> Maybe a
isLeft (Left a) = Just a
isLeft _        = Nothing

isRight :: Either a b -> Maybe b
isRight (Right b) = Just b
isRight _         = Nothing

-- Isomorphisms
toMaybe :: Int -> Maybe Int
toMaybe x = Just x

fromMaybe :: Maybe Int -> Int
fromMaybe (Just x) = x
fromMaybe Nothing  = undefined -- Should handle `Nothing` case in real code

-- Products
fst' :: (a, b) -> a
fst' (x, _) = x

snd' :: (a, b) -> b
snd' (_, y) = y

-- Coproducts--------------------ye nhi AAYA SAMJ MEIN ABHI BHI KOI SMJAOO
factorize :: (a -> c) -> (b -> c) -> Either a b -> c
factorize f g (Left a)  = f a
factorize f g (Right b) = g b

main :: IO ()
main = do
    let unitValue = unit "example"
    print unitValue

    --  duality 
    putStrLn "Duality ka doglapan dikhaya jai"
    print $ isLeft (Left 42 :: Either Int String)
    print $ isRight (Right "example" :: Either Int String)

    -- isomorphism 
    putStrLn "ye isomorphism likhna jarrori hai kya?"
    let maybeInt = toMaybe 42
    let intValue = fromMaybe maybeInt
    print intValue

    -- product 
    putStrLn " Product ..hindi mein bole hein guran..but this not multiply"
    let pair = (42, "Hello")
    print $ fst' pair
    print $ snd' pair

    -- coproduct with Either
    putStrLn " Coproduct .......mujhe ye nhi aaya samj mein koi smjaoo"
    let coproductValue1 = factorize show (++ " world") (Left 42 :: Either Int String)
    let coproductValue2 = factorize show (++ " world") (Right "Hello" :: Either Int String)
    print coproductValue1
    print coproductValue2
