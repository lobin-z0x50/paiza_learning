#!/bin/ruby
$ans = 0
$count = 1

N = gets.to_i
last = -1
N.times do
  a = gets.to_i
  diff = last <=> a
  STDERR.puts "a=#{a} diff=#{diff}"
  case diff
  when -1
    $count = 1
  else
    $count += 1
  end
  $ans = [$ans, $count].max
  last = a
end

puts $ans

