#!/usr/bin/env ruby -wKU

class Box

	# 输出类信息
   puts "Class of self = #{self.class}"
   puts "Name of self = #{self.name}"

	# 类常量
	BOX_COMPANY = "TATA Inc"
   	BOXWEIGHT = 10

	# 初始化 类变量
	@@boxCount = 0

	# 构造函数
	def initialize(w,h)
		# 实例变量赋值
		@width,@heigth = w,h
		@@boxCount += 1
	end

	# 访问器方法
	def getWidth
		@width
	end

	def getHeigth
		@heigth
	end

	# make them private
  	# private :getWidth, :getHeigth

	# 设置器方法
	def setWidth=(value)
		@width = value
	end

	def setHeight=(value)
		@heigth = value
	end

	# 实例方法
	def getArea
		@width * @heigth
	end

	# protected :getArea

	# 类方法
	def self.printCount()
		puts "Box count is : #@@boxCount" 	
	end 

	# 定义 to_s 方法
	def to_s
		"{w:#{@width},h:#{@heigth}}"
	end

	def +(other)         # 定义 + 来执行向量加法
    Box.new(@width + other.width, @height + other.height)
 	 end

  	def -@               # 定义一元运算符 - 来对 width 和 height 求反
   	 Box.new(-@width, -@height)
 	 end

  	def *(scalar)        # 执行标量乘法
   	 Box.new(@width*scalar, @height*scalar)
 	 end
end

box1 = Box.new(10,20)

x = box1.getWidth
y = box1.getHeigth
a = box1.getArea

puts "Width is : #{x}, Height is : #{y}, Area is : #{a}"

box1.setWidth = 20
box1.setHeight = 30

x = box1.getWidth
y = box1.getHeigth
a = box1.getArea

puts "Width is : #{x}, Height is : #{y}, Area is : #{a}"

Box.printCount

puts "String representation of box is: #{box1}"


# 定义子类
class BigBox < Box

   # 添加一个新的实例方法
   def printArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end

    # 改变已有的 getArea 方法
   def getArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end

end

# box1.freeze
if( box1.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

# # 现在尝试使用设置器方法
# box1.setWidth = 30
# box1.setHeight = 50

# # 使用访问器方法
# x = box1.getWidth()
# y = box1.getHeight()

# puts "Width of the box is : #{x}"
# puts "Height of the box is : #{y}"

puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

box3 = Box.allocate