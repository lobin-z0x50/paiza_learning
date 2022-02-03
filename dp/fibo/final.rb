#!/bin/ruby

Q = gets.to_i

$a = { 0 => 0, 1 => 1 }

def fibo(k)
  return $a[k] if $a.has_key? k
  $a[k] = fibo(k-1) + fibo(k-2)
end

Q.times do
  k = gets.to_i
  puts fibo(k)
end
