func fibo(N: int): int =
  if N == 0: return 0
  elif N == 1: return 1
  return fibo(N - 1) + fibo(N - 2)

doAssert fibo(0) == 0
doAssert fibo(1) == 1
doAssert fibo(2) == 1
doAssert fibo(3) == 2
doAssert fibo(4) == 3
doAssert fibo(5) == 5
doAssert fibo(6) == 8
doAssert fibo(7) == 13
doAssert fibo(8) == 21
doAssert fibo(9) == 34
doAssert fibo(10) == 55