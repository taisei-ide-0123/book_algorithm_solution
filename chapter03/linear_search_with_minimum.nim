import strutils

var N = stdin.readLine.parseInt
var a = newSeq[int](N)
for i in 0..N-1:
  a[i] = stdin.readLine.parseInt

var minVal = high(int)
for i in 0..N-1:
  if a[i] < minVal:
    minVal = a[i]

echo "minimum value: ", minVal