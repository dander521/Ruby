#!/usr/bin/ruby -w 

=begin 
Ruby 支持五种类型的变量。
一般小写字母、下划线开头：变量（Variable）。
$开头：全局变量（Global variable）。
@开头：实例变量（Instance variable）。
@@开头：类变量（Class variable）类变量被共享在整个继承链中
大写字母开头：常数（Constant）。
=end

# 1.全局变量
$global_variable = 10

class Class1
	def print_global1
		puts "全局变量在 Class1 中输出为 #$global_variable"
	end
end

class Class2
	def print_global2
		puts "全局变量在 Class2 中输出为 #$global_variable"
	end
end

class1obj = Class1.new
class1obj.print_global1
class1obj = Class2.new
class1obj.print_global2

# 2.实例变量 

class Customer
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
    end
end

# 创建对象
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# 调用方法
cust1.display_details()
cust2.display_details()

# 3.类变量

class Customer
   @@no_of_customers=0
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
    end
    def total_no_of_customers()
       @@no_of_customers += 1
       puts "Total number of customers: #@@no_of_customers"
    end
end

# 创建对象
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# 调用方法
cust1.total_no_of_customers()
cust2.total_no_of_customers()

# 4.局部变量

# 5.常量

class Example
   VAR1 = 100
   VAR2 = 200
   def show
       puts "第一个常量的值为 #{VAR1}"
       puts "第二个常量的值为 #{VAR2}"
   end
end

# 创建对象
object=Example.new()
object.show

# 6.伪变量

=begin
self: 当前方法的接收器对象。
true: 代表 true 的值。
false: 代表 false 的值。
nil: 代表 undefined 的值。
__FILE__: 当前源文件的名称。
__LINE__: 当前行在源文件中的编号。
=end