#!/usr/bin/ruby -w
# -*- coding : utf-8 -*-

# 1.hello ruby
puts "Hello ,Ruby! 我是程荣刚";

# 2.Here Document
print <<EOF
    这是第一种方式创建here document 。
    多行字符串。
EOF

print <<"EOF";                # 与上面相同
    这是第二种方式创建here document 。
    多行字符串。
EOF

print <<`EOC`                 # 执行命令
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar"	      # 您可以把它们进行堆叠
	I said foo.
foo
	I said bar.
bar

# 3. BEGIN END 语句
BEGIN {
	puts "Initializing Ruby Program" # 注释
}

=begin 
这是注释
这是注释
这是注释
这是注释
=end

END {

	puts "Terminating Ruby Program"
}















