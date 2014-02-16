val (a, b) = ((0d,0) /: (1 to 100)) ((sum,n) ⇒
  (sum._1 + Math.pow(n,2), sum._2 + n))

val res = Math.pow(b,2) - a
println(res.toLong)
