doble :: Float -> Float  
doble x = 2 * x 

dobleL :: [Float] -> [Float]
dobleL [] = []
dobleL (x:xs) = (doble x) : (dobleL xs) 

esParL :: [Int] -> [Bool]
esParL [] = []
esParL (x:xs) =  ( mod x 2 == 0) : (esParL xs)

main = do 
    print(dobleL [3,4,5,4,3])
    print(esParL [3,4,5,4,3])