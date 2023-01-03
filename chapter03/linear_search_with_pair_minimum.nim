import strutils

# minimum value for a pair of K or more

var N = stdin.readLine.parseInt
var K = stdin.readLine.parseInt
var a = newSeq[int](N)
var b = newSeq[int](N)

for i in 0..N-1:
  a[i] = stdin.readLine.parseInt

for i in 0..N-1:
  b[i] = stdin.readLine.parseInt

var minVal = high(int)
for i in 0..N-1:
  for j in 0..N-1:
    if a[i] + b[j] < K:
      continue

    if a[i] + b[j] < minVal:
      minVal = a[i] + b[j]

echo "K: ", K
echo "minimum value: ", minVal