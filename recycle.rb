#!/usr/bin/ruby -w

$i = 0
$num = 5

while $i < $num  do
   puts("在循环语句1中 i = #$i" )
   $i +=1
end

$i = 0
$num = 5
begin
   puts("在循环语句2中 i = #$i" )
   $i +=1
end while $i < $num

until $i > $num  do
   puts("在循环语句3中 i = #$i" )
   $i +=1;
end

begin
   puts("在循环语句4中 i = #$i" )
   $i +=1;
end until $i > $num

for i in 0..5
   puts "局部变量的值为 #{i}"
end

(0..5).each do |i|
   puts "局部变量的值为 #{i}"
end

for i in 0..5
   if i > 2 then
      break
   end
   puts "局部变量的值为 #{i}"
end

for i in 0..5
   if i < 2 then
      next
   end
   puts "局部变量的值为 #{i}"
end

for i in 0..5
   if i < 2 then
      puts "局部变量的值为 #{i}"
      redo
   end
end