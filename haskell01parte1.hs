-- Prática 01 de Haskell - Parte 1
-- Nome: Gabriel Vinícius Heisler

sumSquares :: Int -> Int -> Int
sumSquares x y = (x^2)+(y^2)

circleArea :: Float -> Float
circleArea r = 3.1416 * (r^2)

age :: Int -> Int -> Int
age nasc atual = atual - nasc

isElderly :: Int -> Bool
isElderly idade = idade > 65

htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

startsWithA :: String -> Bool
startsWithA str = head str == 'A'

isVerb :: String -> Bool
isVerb str = last str == 'r'

isVowel :: Char -> Bool
isVowel char = char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u' 

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads str1 str2 = (head str1) == (head str2)

isVowel2 :: Char -> Bool
isVowel2 str = elem str "aeiouAEIOU"