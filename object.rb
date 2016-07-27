#!/usr/bin/ruby -w 

puts "Ruby Category and Object";

class Customer
	@@no_of_customers=0
end

# Ruby 类中的变量

=begin 
局部变量：局部变量是在方法中定义的变量。局部变量在方法外是不可用的。在后续的章节中，您将看到有关方法的更多细节。局部变量以小写字母或 _ 开始。
实例变量：实例变量可以跨任何特定的实例或对象中的方法使用。这意味着，实例变量可以从对象到对象的改变。实例变量在变量名之前放置符号（@）。
类变量：类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。类变量在变量名之前放置符号（@@）。
全局变量：类变量不能跨类使用。如果您想要有一个可以跨类使用的变量，您需要定义全局变量。全局变量总是以美元符号（$）开始。
=end 

cust1 = Customer.new
cust2 = Customer.new

# 自定义方法 创建ruby对象

class People
	@@no_of_people=0
	def initialize(id,name,addr)
		@people_id=id
		@people_name=name
		@people_addr=addr
	end
end

people1 = People.new("1","san","xian")
people2 = People.new("2","si","chengdu")

# ruby 类中的成员函数

class Sample
	def hello
		puts "Hello Ruby!"
	end
end

object = Sample.new
object.hello

