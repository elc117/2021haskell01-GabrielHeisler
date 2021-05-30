import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

svgAll :: String
svgAll = 
  svgBegin 800 800 ++ 

  --face
  (svgCircle 400 400 200 "rgb(255, 255, 0, 1)") ++ 

  --hat body
  (svgCircle 400 150 100 "rgb(105, 14, 30, 1)") ++
  (svgCircle 300 150 100 "rgb(105, 14, 30, 1)") ++
  (svgCircle 500 150 100 "rgb(105, 14, 30, 1)") ++
  
  --hat middle
  (svgCircle 600 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 550 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 500 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 450 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 400 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 350 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 300 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 250 250 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 200 250 50 "rgb(105, 14, 30, 1)") ++

  --hat sides
  (svgCircle 215 200 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 230 150 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 260 100 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 585 200 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 570 150 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 540 100 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 615 300 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 185 300 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 177 350 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 623 350 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 177 400 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 623 400 50 "rgb(105, 14, 30, 1)") ++

  --hat top
  (svgCircle 350 100 50 "rgb(105, 14, 30, 1)") ++
  (svgCircle 450 100 50 "rgb(105, 14, 30, 1)") ++

  --eyes
  (svgCircle 335 350 22 "rgb(0, 0, 0, 1)") ++
  (svgCircle 465 350 22 "rgb(0, 0, 0, 1)") ++
  (svgCircle 335 350 20 "rgb(255, 255, 255, 1)") ++
  (svgCircle 465 350 20 "rgb(255, 255, 255, 1)") ++
  (svgCircle 335 350 20 "rgb(255, 0, 0, 1)") ++
  (svgCircle 465 350 20 "rgb(255, 0, 0, 1)") ++
  (svgCircle 335 350 17 "rgb(255, 255, 255, 1)") ++
  (svgCircle 465 350 17 "rgb(255, 255, 255, 1)") ++
  (svgCircle 335 350 14 "rgb(255, 0, 0, 1)") ++
  (svgCircle 465 350 14 "rgb(255, 0, 0, 1)") ++
  (svgCircle 335 350 11 "rgb(255, 255, 255, 1)") ++
  (svgCircle 465 350 11 "rgb(255, 255, 255, 1)") ++
  (svgCircle 335 350 08 "rgb(255, 0, 0, 1)") ++
  (svgCircle 465 350 08 "rgb(255, 0, 0, 1)") ++
  (svgCircle 335 350 05 "rgb(255, 255, 255, 1)") ++
  (svgCircle 465 350 05 "rgb(255, 255, 255, 1)") ++
  (svgCircle 335 350 02 "rgb(0, 0, 0, 1)") ++
  (svgCircle 465 350 02 "rgb(0, 0, 0, 1)") ++


  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
