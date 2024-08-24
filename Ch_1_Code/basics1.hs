
-- main  is the entry point of the program
main:: IO ()
main = do -- do is used for defining multiple statements and make it into a single expression
        let ptaNhi = temp2 om temp 
        let y = 5
        print ((om.id) y == om y) --left id
        print ((id.om) y == om y) -- right id
        putStrLn ("hello  world") -- simple hello world 
        putStrLn (show (om 5)) -- om is a function which takes an integer and returns an integer
        putStrLn (show (temp 8))
        putStrLn (show (ptaNhi 9))
        putStrLn (show (kyaNaamDoon [1,2,3,4,5]))
        putStrLn (show (factorial 15))
        putStrLn(show (koiNaHotaHai 5))
        putStrLn(show (koiNaHotaHai2 3))

om::Int->Int -- we are type defining it
om x = x*2 --now we are really defining it

-- *************************************************************************
-- cannot define one more function with the same name...NO FUNCTION OVERLOADING
-- om::Int -> Int
-- om :: Bool -> Bool           -- no type overloading either
-- *************************************************************************



temp::Int->Int
temp x = do
-- let is used for defining bindings.......bindings vs variable intialisation
-- binding is a functional concept it has immuatability and intialisation is a imperative concept and has mutability
         let y = x*2 
             z=x+1
            in y+z --in used to  end let scope or the value given by let expression is in "in"
            -- let can be used without in but vice versa is not possible


temp1::Int -> Int->Int -- last thing is the return type and everything else is the argument type
-- so in this we have two arguments and one return type
temp1 x y = x+y

temp2::(Int->Int)->(Int->Int)->(Int->Int) -- it takes two functions and returns one function

-- remember in lhs side of this parameter will get curried
-- means you can pass only one argument at a time
-- so question arises ....why we are not defining  f x g x    or  f g     in lhs side
-- in fx gx .....fx and gx will give value not a function 
-- and fg ....right now i dont know 
temp2 f g x = f (g x) --right to left jaayega

kyaNaamDoon ::  [Int] -> Int
kyaNaamDoon [] = 1
kyaNaamDoon (x:xs) = x + kyaNaamDoon xs 


-- recusion bhaiya either bathien hein
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)



-- pattern matching
koiNaHotaHai :: Int -> String
koiNaHotaHai 0 = "zero"
koiNaHotaHai 1 = "one"
koiNaHotaHai 2 = "two"
koiNaHotaHai _ = "lol switch statement jaisi hein but ye aisi bhi lag rhi hai ki ye base statement hai aur recurrsion ko rok rhi hai" -- _iska matlab default case of switch statement


-- Guards
koiNaHotaHai2 :: Int -> String
koiNaHotaHai2 x
    | x == 0 = "zero"
    | x == 1 = "one"
    | x == 2 = "two"
    | otherwise = "lol  imperative  switch statement jaisi hein"