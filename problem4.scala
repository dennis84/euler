val res = (for {
  a ← 100 to 999
  b ← 100 to 999
  s = a * b
  if(s.toString == s.toString.reverse)
} yield s).sorted.last

println(res)
