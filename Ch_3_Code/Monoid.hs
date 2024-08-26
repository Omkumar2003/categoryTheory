-- (<>) infix ki tarah kaam krega
import Data.Monoid (mempty, (<>))

main :: IO ()
main = do
    let str1 = "I love "
    let str2 = "Her"
    let str3 = "jannat aur tu dono nasib nhi hue"

-- issi tararh ++ operator kaam krta hai in haskell
-- but why java does not have this operator.......because + operatoer is overloadded in java
    let result = str1 <> str2 <> str3
    putStrLn $ "Result of str1 <> str2 <> str3: " ++ result

    -- Demonstrating the use of mempty
    let empty = mempty :: String
    putStrLn $ "Result of str1 <> mempty: " ++ (str1 <> empty)
