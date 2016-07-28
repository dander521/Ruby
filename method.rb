#！/usr/bin/ruby -w 
# -*- coding: UTF-8 -*-

def test(a1="Ruby", a2="Perl")
	puts "编程语言为： #{a1}"
	puts "编程语言为： #{a2}"
end

test

test "C", "C++"

def testReturn
	i = 100
	j = 200
	k = 300
	return i, j ,k
end

var = testReturn
puts var

def sample (*testSample)
	puts "参数个数为：#{testSample.length}"
	for i in 0...testSample.length
		puts "参数值为：#{testSample[i]}"
	end
end

sample "Roger", "36", "28"
sample "Geek", "28", "26", "Hello World"


