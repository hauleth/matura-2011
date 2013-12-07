sklej = (n) ->
  if n == 1
    1
  else
    n - 1 + sklej(Math.floor(n/2)) + sklej(Math.ceil(n/2))

sklejGen = (size) ->
  tab = [1, 1]
  tab[i] = i - 1 + tab[Math.floor(i/2)] + tab[Math.ceil(i/2)] for i in [2..size]

  tab

console.log i for i in sklejGen(10000)
