doble :: Int -> Int  
doble(x) = 2 * x 

positivo :: Int-> Bool
positivo n | n >= 0 = True
        | otherwise = False

--Definiciones locales.
--Definimos la funcion g y luego la utilizamos pero de forma local.

f :: (Int, Int) -> Int
f(x,y) = g x + y
        where g z = z + 2

--Currificación tenemos por ejemplo F x y que sabemos que es
-- Int -> Int -> Int
--entonces lo que pasa realmente es que F x devuelve una función a
--la que llamaremos FX y recibe un parametro y, al cual le aplica x
--Haskell trabaja con funciones de una sola variable, no existe
--la multivariabilidad.

--version uncurry de suma
--sumaUncurry ::(Int, Iny) -> Int
--sumaUncurry (x, y) = x + y

--version curry de suma
--sumaCurry :: Int -> Int -> Int
--sumaCurry x y = x + y

--version uncurry de suma
sumaUncurry ::(Int, Int) -> Int
sumaUncurry (x, y) = x + y

--version curry de suma
sumaCurry :: Int -> Int -> Int
sumaCurry = curry sumaUncurry

--uncurry es con parentesis, el proceso de currying es cuando 
--no tenemos parametros sino escribimos en forma lineal.

--sumaUncurry :: (Int, Int) -> Int
--sumaUncurry = uncurry sumaCurry

--Declaración de tipos algebraicos

data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo

data Figura = Circulo Float | Rectangulo Float Float

--Funcion empleando pattern matching y Tipos

area :: Figura -> Float
area(Circulo radio) = pi * radio^2
area (Rectangulo l1 l2) = l1 * l2

esCuadrado :: Figura -> Bool
esCuadrado (Rectangulo x y) | (x == y) = True
esCuadrado _ = False

radio :: Figura -> Float
radio(Circulo r) = r

--Recursion

long :: [a] -> Int
long [] = 0
long (x:xs) = 1 + long xs

main = do  
   --print(doble(16)) 
   --print(positivo(3))
   --print(positivo(-1))
   --print(sumaCurry 3 7)
   --print(area (Circulo 5))
   --print(esCuadrado( Rectangulo 5 7))
   --print(esCuadrado( Rectangulo 5 5))
   print(radio(Circulo 5))
   print(long [1,2,3,4,5])