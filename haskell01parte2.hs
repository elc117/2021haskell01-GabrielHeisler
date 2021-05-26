-- Prática 01 de Haskell - Parte 2
-- Nome: Gabriel Vinícius Heisler

htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

itemize :: [String] -> [String]
itemize str = map htmlItem str