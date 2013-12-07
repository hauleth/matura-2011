#!/usr/bin/env ruby
# encoding: UTF-8

def sklej(n)
  if n == 1
    return 1
  elsif n.even?
    return n - 1 + 2*sklej(n/2)
  else
    return n - 1 + sklej((n-1)/2) + sklej((n+1)/2)
  end
end

def sklej_gen(size)
  tab = [1,1]
  (2..size).each do |i|
    tab[i] = i - 1 + tab[(i/2.0).floor] + tab[(i/2.0).ceil]
  end
  tab
end

#(1..10000).each { |i| puts sklej(i) }
sklej_gen(10000).each { |i| puts i }

