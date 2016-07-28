#!/usr/bin/env ruby -wKU

name1 = "Joe"
name2 = "Marry"
puts "你好 #{name1}, #{name2} 在哪？"

x, y ,z = 12, 24, 36
puts "x 的值为 #{x}"
puts "x + y 的值为：#{x + y}"
puts "x + y + z 的值为：#{x + y + z}"

desc1 = %Q{Ruby 的字符串可以使用 '' 和 ""。}
desc2 = %q|Ruby 的字符串可以使用 '' 和 ""。|

puts desc1
puts desc2

myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts foo

