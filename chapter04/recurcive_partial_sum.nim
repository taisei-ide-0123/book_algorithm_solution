import strutils

# function that returns bool value whether the total can be w
# by choosing some value from the first i (a0,a1,...,ai－1) of a0,a1,...,aN－1

func isW(i, w: int, a: seq[int]): bool =
  if i == 0:
    return w == 0

  # If a[i - 1] is not chosen
  if isW(i - 1, w, a):
    return true

  # If a[i - 1] is chosen
  if isW(i - 1, w - a[i - 1], a):
    return true

  return false

var N = stdin.readLine.parseInt
var W = stdin.readLine.parseInt
var a = newSeq[int](N)
for i in 0..<N:
  a[i] = stdin.readLine.parseInt

if isW(N, W, a):
  echo "yes"
else:
  echo "no"