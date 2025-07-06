module Main (main) where

import Lib
import Text.Printf (printf)

main :: IO ()
main = do
  printf "\n"
  print (myMap (+ 1) [1, 2, 3])
  print (myFilter (> 1) [1, 2, 3])
  printf "\n"
