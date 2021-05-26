-- Prática 01 de Haskell - Parte 2
-- Nome: Gabriel Vinícius Heisler

htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

itemize :: [String] -> [String]
itemize str = map htmlItem str

isA :: Char -> Bool
isA char = char == 'a'
onlyVowels :: String -> String
onlyVowels str = filter isA str

is65p :: Int -> Bool
is65p age = age > 65
onlyElderly :: [Int] -> [Int]
onlyElderly ages = filter is65p ages

isLongWord :: String -> Bool
isLongWord s = length s > 10
onlyLongWords :: [String] -> [String]
onlyLongWords str = filter isLongWord str

isEven :: Int -> Bool
isEven a = mod a 2 == 0
onlyEven :: [Int] -> [Int]
onlyEven num = filter isEven num

between60and80 :: Int -> Bool
between60and80 x = x>=60 && x<=80
onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 lst = filter between60and80 lst

isSpace :: Char -> Bool
isSpace c = c == ' '
countSpaces :: String -> Int
countSpaces str2 = length(filter isSpace str2)

calcAreas :: [Float] -> [Float]
calcAreas raios = raios^2 * 3.1416

isChar :: Char -> Char -> Bool
isChar char1 char2 = char1 == char2

charFound :: Char -> String -> Bool
charFound char string = length(filter (isChar char) string) > 0
