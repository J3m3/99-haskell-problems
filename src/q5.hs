myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myReverse' :: [a] -> [a]
myReverse' = go []
  where
    go acc [] = acc
    go acc (x : xs) = go (x : acc) xs

myReverse'' :: [a] -> [a]
myReverse'' xs = foldr (\x fId empty -> fId (x : empty)) id xs []

{-
foldr (\x fId empty -> fId (x : empty)) id [a1, a2, a3, a4] []

f a1 (f a2 (f a3 (f a4 id)))
  => f a1 (f a2 (f a3 (\empty -> id $ (a4 : empty))))
  => f a1 (f a2 (\empty' -> (\empty -> id $ (a4 : empty)) $ (a3 : empty')))
  => f a1 (\empty'' -> (\empty' -> (\empty -> id $ (a4 : empty)) $ (a3 : empty')) $ (a2 : empty''))
  => \empty''' -> (\empty'' -> (\empty' -> (\empty -> id $ (a4 : empty)) $ (a3 : empty')) $ (a2 : empty'')) $ (a1 : empty''')

  => (can be represented to...)
  => \empty''' -> (\empty' -> (\empty -> id $ (a4 : empty)) $ (a3 : empty')) $ (a2 : (a1 : empty''')))
  => \empty''' -> (\empty -> id $ (a4 : empty)) $ (a3 : (a2 : (a1 : empty'''))))
  => \empty''' -> id $ (a4 : (a3 : (a2 : (a1 : empty'''))))
  => \empty''' -> id $ (a4 : a3 : a2 : a1 : empty''')

apply []
  => (\empty'' -> (\empty' -> (\empty -> id (a4 : empty)) (a3 : empty')) (a2 : empty'')) (a1 :[]))
  => (\empty' -> (\empty -> id (a4 : empty)) (a3 : empty')) (a2 : (a1 : [])))
  => (\empty -> id (a4 : empty)) (a3 : (a2 : (a1 : [])))))
  => id (a4 : (a3 : (a2 : (a1 : []))))))
  => a4 : a3 : a2 : a1 : []
-}