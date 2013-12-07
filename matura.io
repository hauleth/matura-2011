Range

sklej := method(n,
  half := n / 2;
  if(n == 1, 1, n - 1 + sklej(half floor) + sklej(half ceil))
)

sklejGen := method(size,
  l := list(1, 1)
  2 to(size) foreach(i,
    half := i / 2
    l append(i - 1 + (l at(half floor)) + (l at(half ceil)))
  )
)

sklejGen(10000) foreach(v, v println)

nil
