def divs(r: Seq[Int]): Stream[Int] = divs(r, Stream.from(r.last))

def divs(r: Seq[Int], s: Stream[Int]): Stream[Int] =
  if(r.forall(s.head % _ == 0)) s.head #:: divs(r, Stream.from(s.head + r.last))
  else divs(r, Stream.from(s.head + r.last))

val res = divs(11 to 20).take(1).toList
println(res)
