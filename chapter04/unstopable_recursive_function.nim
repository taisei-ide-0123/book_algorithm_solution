func sumUp(N: int): int =
  ## NOTE: Never stop
  if N == 0:
    return 0
  return N + sumUp(N + 1)