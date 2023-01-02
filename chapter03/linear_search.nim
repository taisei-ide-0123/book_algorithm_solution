import strutils

var N = stdin.readLine.parseInt
var v = stdin.readLine.parseInt
var a = newSeq[int](N)
for i in 0..N-1:
  a[i] = stdin.readLine.parseInt

var exist = false
for i in 0..N-1:
  if a[i] == v:
    exist = true

if exist:
  echo "yes"
else:
  echo "no"