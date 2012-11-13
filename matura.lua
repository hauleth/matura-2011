function sklej(n)
  if n == 1 then return 1 end
  return n - 1 + sklej(math.ceil(n/2)) + sklej(math.floor(n/2))
end

function sklej_gen()
  tab = {1}
  setmetatable(tab, {
    __index = function(table, n)
      table[n] = n - 1 + table[math.ceil(n/2)] + table[math.floor(n/2)]
      return table[n]
    end
  })
  return tab
end

sklejone = sklej_gen()
for i=1,10000 do
  print(sklejone[i])
end
