#!/bin/ruby

N, x, a, y, b, z, c = gets.split.map(&:to_i)

MENU = {x => a, y => b, z => c}
$ans = []

def step(history)
  next_h = Hash.new(0)
  history.each do |cnt, price|
    MENU.each do |x, a|
      cnt2 = cnt + x
      price2 = price + a
      if cnt2 >= N
        $ans << price2
      else
        next_h[cnt2] = price2
      end
    end
  end
  next_h
end


h = { 0 => 0 }
while h.length > 0
  h = step h
  STDERR.puts h    # for debug
end

puts $ans.min

