#!/usr/bin/env ruby -wKU

# 1.puts 

# val1 = "This is variable one"
# val2 = "This is variable two"
# puts val1
# puts val2

# 2.gets 

# puts "Enter a value :"
# val = gets
# puts val

# 3.putc

# str="Hello Ruby!"
# putc str

# 4.print

# print "Hello World"
# print "Good Morning"

# 5.操作实际的数据文件

aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

aFile = File.new("input.txt", "r")
if aFile
   content = aFile.sysread(20)
   puts content
else
   puts "Unable to open file!"
end