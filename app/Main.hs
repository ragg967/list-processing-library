{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main (main) where

import Lib
import Text.Printf (printf)

a :: Integer
a = 1

b :: Integer
b = 2

c :: Integer
c = 3

d :: Integer
d = 4

main :: IO ()
main = do
  printf "\n"
  printf ("builtin " ++ show (map (* 1) [1, 2, 3]))
  printf "\n"
  printf ("self made " ++ show (myMap (* 1) [1, 2, 3]))
  printf "\n"
  printf ("builtin " ++ show (filter (> 1) [1, 2, 3]))
  printf "\n"
  printf ("self made " ++ show (myFilter (> 1) [1, 2, 3]))
  printf "\n"
  printf ("builtin " ++ show (foldl (+) 0 [1, 2, 3]))
  printf "\n"
  printf ("self made " ++ show (myFold (+) 0 [1, 2, 3]))
  printf "\n"
  printf ("builtin " ++ show (zip [1, 2, 3, 4] [d, c, b, a]))
  printf "\n"
  printf ("self made " ++ show (myZip [1, 2, 3, 4] [d, c, b, a]))
  printf "\n"
  printf "\n"
