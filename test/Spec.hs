import Test.QuickCheck
import Utils

prop_reverse_of_reverse_eq_identity xs = (reverseList $ reverseList xs) == xs

prop_inserted_element_is_smaller_than_its_successor x ys =
  let whole = insertInOrder x ys
   in case dropWhile (\e -> e /= x) whole of
        (a:b:cs) -> a <= b
        _ -> True

prop_sorted_list_cannot_be_further_sorted xs =
  insertionSort xs == (insertionSort $ insertionSort xs)

main = do
  putStrLn "Testing reverseList:"
  quickCheckResult (prop_reverse_of_reverse_eq_identity :: [Int] -> Bool)
  putStrLn "Testing insertInOrder:"
  quickCheckResult
    (prop_inserted_element_is_smaller_than_its_successor :: Int -> [Int] -> Bool)
  putStrLn "Testing insertionSort:"
  quickCheckResult (prop_sorted_list_cannot_be_further_sorted :: [Int] -> Bool)
