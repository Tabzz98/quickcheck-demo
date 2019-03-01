import Test.QuickCheck
import Utils

prop_reverseOfReverseEqIdentity xs = (reverseList $ reverseList xs) == xs

prop_sortedListCannotBeFurtherSorted xs =
  insertionSort xs == (insertionSort $ insertionSort xs)

prop_allPredecessorsLtSuccessors xs = isSorted (insertionSort xs)
  where
    isSorted (x:y:xs) = x <= y && isSorted xs
    isSorted _ = True

main = do
  putStrLn "Testing reverseList:"
  quickCheckWith
    (stdArgs {maxSuccess = 5000})
    (prop_reverseOfReverseEqIdentity :: [String] -> Bool)
  putStrLn "Testing insertionSort:"
  quickCheckWith
    (stdArgs {maxSuccess = 10000})
    (prop_sortedListCannotBeFurtherSorted :: [Int] -> Bool)
  quickCheck (prop_allPredecessorsLtSuccessors :: [Int] -> Bool)
