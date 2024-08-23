-- lazy evaluation
-- lazy evaluation smajhne se phele we should know difference between statement vs expression
-- complicated nhi krta but jo expression nhi hai wo statement hai
-- ab expression kya hai ?
-- (2+3 )+ 4 ..........isse milti joolti chizen ya  jaise (2+3)*om(3)

-- kya sabhi expression ki jarrah hai ?
-- na na na 
-- that why in lazy evaluation we do not evaluate the expression until it is required
-- lazy evaluation ka ulta kya hai ? 
-- early evaluation jo java jaise langugae krti hai


-- wese sach khuin to 2 chizon ke liye lazy evaluation use hota hai
-- infinite loop ya infinte thing se bachne ke liye 
-- and wo expression ko detect krke na evalutae krna jo aage use hi nhi ho rha 
    -- iss point mein ..........we have already developed better options 
    -- lsp (Language server protocol) ye bta dega ki konsa object hmare code mein sirf decalre hua hai aur further use nhi hua 
    -- so i dont know why this point is there ....i might change it is future ...until it is what it is


main :: IO ()
main = do
        let x = [1..] -- this is an infinite list
        let y = take 100 x
    -- in imperative language we cant do this because java like language will fire early eavluator to calculate number till infninty
        print y

-- lazy evaluation is done with the help of a data structure called thunk