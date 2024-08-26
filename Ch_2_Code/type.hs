main ::IO ()

-- bottom ka exmaple
om x = error "om kumar"

-- void ka exmaple
absurd :: void ->a
absurd _ = error "evol"


-- pure function
om1 :: Int ->  Int
om1 x = x*2

main = do
    -- undefined ka exmaple
    let x = undefined
    -- return ka exmaple
    return ()