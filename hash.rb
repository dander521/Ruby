#!/usr/bin/env ruby -wKU

month = Hash.new ("month")
puts "#{month[0]}"
puts "#{month[72]}"

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"

$, = ", "
months = Hash.new( "month" )

months = {"1" => "January", "2" => "February"}

keys = months.keys
values = months.values

puts "#{keys}"
puts "#{values}"