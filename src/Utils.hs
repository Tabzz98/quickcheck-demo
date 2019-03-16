module Utils
  ( reverseList
  , insertInOrder
  , insertionSort
  ) where

reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

insertInOrder x [] = [x]
insertInOrder x (y:ys) =
  if x < y
    then x : y : ys
    else y : insertInOrder x ys

insertionSort [x] = [x]
insertionSort (x:xs) = insertInOrder x (insertionSort xs)
