val res = ((1 to 999/3).map(_ * 3) ++
           (1 to 999/5).map(_ * 5)).distinct reduceLeft(_ + _)

println(res)
