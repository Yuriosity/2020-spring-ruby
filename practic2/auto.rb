class Auto
    attr_accessor :brand
    attr_accessor :model
    attr_accessor :manifacture_year 
    attr_accessor :gasoline_consumption
    def initialize(a,b,c,d)
        @brand = a
        @model = b
        @manifacture_year  = Integer(c)
        @gasoline_consumption = Float(d)
    end

    def to_s
        "Машина марки #{brand} модели #{model} #{manifacture_year} года выпуска с средним расходом топлива равным #{gasoline_consumption}"
    end
end