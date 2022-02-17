#!/bin/ruby

hist = { 0 => 0, 1 => 0 }
N = gets.to_i
N.times do |i|
  a = gets.to_i
  #STDERR.puts "i=#{i} a=#{a} hist.length=#{hist.length}"

  # 木を切る
  # nothing to do.

  # 木を切らない
  hist.dup.each do |k,v|
    k1 = k+1
    if k==1
      hist[1] = a if hist[1] < a
    end
    if v > a
      if !hist.has_key?(k1)
        hist[k1] = a
      elsif hist[k1] < a
        hist[k1] = a
      end
    end
  end

  #STDERR.puts "a:#{a} hist=#{hist}"
end

#STDERR.puts "hist_size=#{hist.length}"
puts hist.keys.max

