#!/bin/ruby

N, a, b, c = gets.split.map(&:to_i)

STEPS = [a,b,c]
$count = 0

def step(history)
  next_h = Hash.new(0)
  history.each do |h, cnt|
    STEPS.each do |s|
      x = h + s
      next if x > N
      next_h[x] += cnt
    end
  end
  $count += next_h[N]
  next_h
end


h = { 0 => 1 }
while h.length > 0
  h = step h
  #puts h    # for debug
end

puts $count
