#!/usr/bin/ruby -w 
# -*- coding: UTF-8 -*-

def test
	puts "在 test 方法内"
	yield
	puts "你又回到了 test 方法内"
	yield
end

test {
	puts "你在块内部"
}

def test1
   yield 5
   puts "在 test1 方法内"
   yield 100
end
test1 {|i| puts "你在块 #{i} 内"}

def test2
  yield
end
test2 { puts "Hello world"}

def test3(&block)
   block.call
end
test3 { puts "Hello World!"}

BEGIN { 
  # BEGIN 代码块
  puts "BEGIN 代码块"
} 

END { 
  # END 代码块
  puts "END 代码块"
}
  # MAIN 代码块
puts "MAIN 代码块"