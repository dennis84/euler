// a² + b²   = c²
// a + b + c = 1000
// a² + b²   = (1000 - a - b)²

def formula(a: Int, b: Int, x: Int): Boolean =
  math.pow(a, 2) + math.pow(b, 2) == math.pow(x - a - b, 2)

val res = (for {
  a ← 1 to 1000
  b ← 1 to 1000
  if(formula(a, b, 1000))
} yield (a * b * (1000 - a - b))).head

println(res)
