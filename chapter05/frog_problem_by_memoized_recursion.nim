import strutils

const INF = 1 shl 60 # 2^60

let N = stdin.readLine.parseInt

var h = newSeq[int](N)
for i in 0..<N:
  h[i] = stdin.readLine.parseInt

var dp = newSeq[int](N)
for i in 0..<N:
  dp[i] = INF

proc chmin(a, b: int): int =
  if a > b:
    return b
  return a

proc rec(i: int): int =
  # Return if DP value has been updated
  if dp[i] < INF:
    return dp[i]

  # Base case: cost of platform 0 is 0
  if i == 0:
    return 0

  # Initialize the variable representing the answer with INF
  var res = INF

  # If coming from platform i - 1
  res = chmin(res, rec(i - 1) + abs(h[i] - h[i - 1]))

  # If coming from platform i - 2
  if i > 1:
    res = chmin(res, rec(i - 2) + abs(h[i] - h[i - 2]))

  dp[i] = res

  return dp[i]

echo rec(N - 1)



