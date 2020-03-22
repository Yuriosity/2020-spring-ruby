class Fleet
    attr_reader :cars
    def initialize()
        @cars = Array.new []
    end

    def to_s
        i=0
        while (i<@cars.size) do
           puts @cars[i].to_s
           i = i+1
        end
    end

    def add(car)
       @cars.push(car) 
    end
    
    def average_consumption
        i=0
        sum = 0
        while (i<@cars.size) do
            sum = sum + @cars[i].gasoline_consumption
            i = i+1
        end
        return sum
    end

    def number_by_brand(brand)
        i=0
        sum = 0
        while (i<@cars.size) do
            if (@cars[i].brand == brand) 
                sum = sum + 1
            end
            i = i+1
        end
        return sum
    end

    def number_by_model(model)
        i=0
        sum = 0
        while (i<@cars.size) do
            if (@cars[i].model == model) 
                sum = sum + 1
            end
            i = i+1
        end
        return sum
    end

    def consumption_by_brand(brand)
        i=0
        sum = 0
        while (i<@cars.size) do
            if (@cars[i].brand == brand) 
                sum = sum + @cars[i].gasoline_consumption
            end
            i = i+1
        end
        sum = sum/@cars.size
        return sum
    end
end