# Finding the greatest common divisor by Euclidean Algorithm
# GCD(m, n) = GCD(n, r)
# r is the remainder of m divided by n
func GCD(m, n: int): int =
  if n == 0:
    return m
  return GCD(n, m mod n)

doAssert GCD(51, 15) == 3
doAssert GCD(15, 51) == 3