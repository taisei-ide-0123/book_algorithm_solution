import strformat

var F = newSeq[int](50)
F[0] = 0
F[1] = 1

for N in 2..<50:
  F[N] = F[N - 1] + F[N - 2]
  echo fmt"index: {N} value: {F[N]}"

doAssert F[0] == 0
doAssert F[1] == 1
doAssert F[2] == 1
doAssert F[3] == 2
doAssert F[4] == 3
doAssert F[5] == 5
doAssert F[6] == 8
doAssert F[7] == 13
doAssert F[8] == 21
doAssert F[9] == 34
doAssert F[10] == 55