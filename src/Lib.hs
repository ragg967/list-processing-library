module Lib
  ( myMap,
    myFilter,
    myFold,
    myZip,
  )
where

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x : xs)
  | p x = x : myFilter p xs
  | otherwise = myFilter p xs

myFold :: (b -> a -> b) -> b -> [a] -> b
myFold _ acc [] = acc
myFold f acc (x : xs) = myFold f (f acc x) xs

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys