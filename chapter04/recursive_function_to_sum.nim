func sumToN(N: int): int =
  if N == 0:
    return 0
  return N + sumToN(N - 1)

doAssert sumToN(5) == 15
doAssert sumToN(4) == 10
doAssert sumToN(3) == 6
doAssert sumToN(2) == 3
doAssert sumToN(1) == 1
doAssert sumToN(0) == 0