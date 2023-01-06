import strutils

func chmax(a: int, b: int): int =
  if a < b:
    return b
  return a

let N = stdin.readLine.parseInt
let W = stdin.readLine.parseInt

var
  weight = newSeq[int](N)
  value = newSeq[int](N)
  dp = newSeq[seq[int]](N+1)

for i in 0..<N:
  weight[i] = stdin.readLine.parseInt

for i in 0..<N:
  value[i] = stdin.readLine.parseInt

var el = newSeq[int](W+1)
for i in 0..<N+1:
  dp[i] = el

for i in 0..<N:
  for w in 0..<W:
    if w - weight[i] >= 0:
      dp[i + 1][w] = chmax(dp[i + 1][w], dp[i][w - weight[i]] + value[i])
    dp[i + 1][w] = chmax(dp[i + 1][w], dp[i][w])

echo dp[N][W]