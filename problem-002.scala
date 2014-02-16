val fibs: Stream[BigInt] =
  0 #:: 1 #:: fibs.zip(fibs.tail).map(n ⇒ n._1 + n._2)

val res = fibs.takeWhile(_ < 4000000) filter(_ % 2 == 0) reduceRight(_ + _)
println(res)
