printAll (x : ys@(y : yy)) = do
  print x
  print ys
  print y
  print yy

printAll' (x : ys@y : yy) = do
  print x
  print ys
  print y
  print yy

printAll'' ys@(y : yy) = do
  -- print x
  print ys
  print y
  print yy

printAll''' (x : ys@yy) = do
  print x
  print ys
  -- print y
  print yy

printAll'''' (ys@y : yy) = do
  -- print x
  print ys
  print y
  print yy
