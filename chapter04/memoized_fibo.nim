import strformat

var memo = newSeq[int](50)
for i in 0..<50:
  memo[i] = -1

proc fibo(N: int): int =
  if N == 0:
    return 0

  if N == 1:
    return 1

  if memo[N] != -1:
    return memo[N]

  memo[N] = fibo(N - 1) + fibo(N - 2)
  return fibo(N - 1) + fibo(N - 2)

discard fibo(49)

doAssert memo[2] == 1
doAssert memo[3] == 2
doAssert memo[4] == 3
doAssert memo[5] == 5
doAssert memo[6] == 8
doAssert memo[7] == 13
doAssert memo[8] == 21
doAssert memo[9] == 34
doAssert memo[10] == 55

for N in 2..<50:
  echo fmt"index: {N} value: {memo[N]}"