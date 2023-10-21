myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl _ acc [] = acc
myFoldl f acc (x : xs) = myFoldl f (f acc x) xs

{-
[a1, a2, a3, a4] => f (f (f (f acc a1) a2) a3) a4
myFoldl f acc [a1, a2, a3, a4]
  => myFoldl f (f acc a1) [a2, a3, a4]
  => myFoldl f (f (f acc a1) a2) [a3, a4]
  => myFoldl f (f (f (f acc a1) a2) a3) [a4]
  => myFoldl f (f (f (f (f acc a1) a2) a3) a4) []
  => f (f (f (f acc a1) a2) a3) a4
-}

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ acc [] = acc
myFoldr f acc (x : xs) = f x (myFoldr f acc xs)

{-
[a1, a2, a3, a4] => f a1 (f a2 (f a3 (f a4 acc)))
myFoldr f acc [a1, a2, a3, a4]
  => f a1 (myFoldr f acc [a2, a3, a4])
  => f a1 (f a2 (myFoldr f acc [a3, a4]))
  => f a1 (f a2 (f a3 (myFoldr f acc [a4])))
  => f a1 (f a2 (f a3 (f a4 (myFoldr f acc []))))
  => f a1 (f a2 (f a3 (f a4 acc)))
  => f a1 (f a2 (f a3 (f a4 acc)))
-}
