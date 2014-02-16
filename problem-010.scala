val nums: Stream[Long] = 2 #:: 3 #:: nums.tail.map(_ + 2)

def sieve(n: Long): Stream[Long] =
  if(nums.takeWhile(p ⇒ p * p <= n).exists(n % _ == 0)) sieve(n + 1)
  else n #:: sieve(n + 1)

val res = sieve(2).takeWhile(_ < 2000000).reduce(_ + _)

println(res)
