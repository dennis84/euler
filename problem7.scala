val nums: Stream[Int] = 2 #:: 3 #:: nums.tail.map(_ + 2)

def sieve(n: Int): Stream[Int] =
  if(nums.takeWhile(p ⇒ p * p <= n).exists(n % _ == 0)) sieve(n + 1)
  else n #:: sieve(n + 1)

val res = sieve(2).take(10001).last

println(res)
