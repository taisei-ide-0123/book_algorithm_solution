import strutils

func chmin(a, b: int): int =
  if a > b:
    return b
  return a

const INF = 1 shl 60 # 2^60

let N = stdin.readLine.parseInt

var h = newSeq[int](N)
for i in 0..<N:
  h[i] = stdin.readLine.parseInt

var dp = newSeq[int](N)
for i in 0..<N:
  dp[i] = INF

dp[0] = 0

for i in 0..<N:
  if i + 1 < N:
    dp[i + 1] = chmin(dp[i + 1], dp[i] + abs(h[i] - h[i + 1]))
  if i + 2 < N:
    dp[i + 2] = chmin(dp[i + 2], dp[i] + abs(h[i] - h[i + 2]))

echo dp[N - 1]