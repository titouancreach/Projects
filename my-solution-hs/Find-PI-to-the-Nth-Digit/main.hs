
-- BBP formula
getPiTerm :: Float -> Float
getPiTerm k = 
  let x = 16 ** (-k) in
  let a = 4 / (8 * k + 1) in
  let b = 2 / (8 * k + 4) in
  let c = 1 / (8 * k + 5) in 
  let d = 1 / (8 * k + 6) in 
  x * (a - b - c -d)


getPi :: Integer -> Float
getPi n = sum $ map getPiTerm [0.0 .. fromIntegral n]

main = do
  putStrLn $ show $ getPiTerm 1.0
  putStrLn $ show $ getPi 10

