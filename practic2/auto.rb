class Auto
    attr_reader :brand
    attr_reader :model
    attr_reader :manifacture_year 
    attr_reader :gasoline_consumption
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