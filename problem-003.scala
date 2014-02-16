def facts(n: Long, s: Stream[Int]): Stream[Int] =
  if(n == s.head) s.head #:: Stream.empty
  else if(n % s.head == 0) s.head #:: facts(n / s.head, Stream.from(2))
  else facts(n, s.tail.filter(_ % s.head != 0))

val res = facts(600851475143L, Stream.from(2)).takeRight(1).head
println(res)
