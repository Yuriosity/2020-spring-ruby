require_relative 'my_complex'
puts "I am working!"

print "Введите действительную часть комлпексного числа (действительное число) >"
w = gets
print "Введите мнимую часть комлпексного числа (действительное число) >"
e = gets
a = MyComplex.new(w,e)
puts a.to_s

print "Введите действительную часть другого комлпексного числа (действительное число) >"
w = gets
print "Введите мнимую часть другого комлпексного числа (действительное число) >"
e = gets
b = MyComplex.new(w,e)
puts b.to_s

puts a.real
puts a.imaginary

puts b.real
puts b.imaginary

c = a.add(b);
puts c.to_s

c = a.multiply(b);
puts c.to_s

c = a.sub(b);
puts c.to_s

c = a.divide(b);
puts c.to_s
