import strutils

let N = stdin.readLine.parseInt

var h = newSeq[int](N)
for i in 0..<N:
  h[i] = stdin.readLine.parseInt

const INF = 1 shl 60 # 2^60

var dp = newSeq[int](N)
for i in 0..<N:
  dp[i] = INF

dp[0] = 0

for i in 1..<N:
  if i == 1:
      dp[i] = abs(h[i] - h[i - 1])
  else:
      dp[i] = min(dp[i - 1] + abs(h[i] - h[i - 1]), dp[i - 2] + abs(h[i] - h[i - 2]))

echo dp[N - 1]