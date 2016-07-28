#!/usr/bin/env ruby -wKU

names = Array.new(2, "mac")

puts names.size
puts names.length
puts names

nums = Array.new(10) { |e| e = e * 2 }

puts "#{nums}"

digits = Array(0..9)

puts "#{digits}"

digits1 = Array(0..9)

num = digits1.at(6)

puts "#{num}"