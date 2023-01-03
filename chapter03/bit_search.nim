import strutils

# A good article -> https://qiita.com/momeemt/items/ac627c89dab054ba261f

var N = stdin.readLine.parseInt
var W = stdin.readLine.parseInt
var a = newSeq[int](N)

for i in 0..<N:
  a[i] = stdin.readLine.parseInt

var exist = false

# (1 shl N) = 2^N
for bit in 0..<(1 shl N):
  var sum = 0

  for i in 0..<N:
    if (bit and (1 shl i)) != 0:
      sum += a[i]

    if sum == W:
      exist = true

if exist: echo "yes" else: echo "no"

for i in 0..<9:
  echo 1 shl i