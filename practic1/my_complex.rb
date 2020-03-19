class MyComplex
    attr_reader :real
    attr_reader :imaginary
    def initialize(a,b)
        @real = Float(a)
        @imaginary = Float(b)
    end
    
    def to_s
        "complex: #{@real} + (#{@imaginary})i"
    end
    
    def add(other)
        return c = MyComplex.new(other.real + @real,other.imaginary + @imaginary)
    end

    def multiply(other)
        return c = MyComplex.new(other.real*@real - other.imaginary*@imaginary,other.imaginary*@real + @imaginary*other.real)
    end
    
    def divide(other)
        return c = MyComplex.new((other.real*@real + other.imaginary*@imaginary)/(other.real*other.real + other.imaginary*other.imaginary), (@imaginary*other.real - other.imaginary*@real)/(other.real*other.real + other.imaginary*other.imaginary))
    end

    def sub(other)
        return c = MyComplex.new(other.real - @real,other.imaginary - @imaginary)
    end
end