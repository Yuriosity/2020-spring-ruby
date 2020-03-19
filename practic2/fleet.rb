require 'json'

class Fleet
    attr_reader :cars
    def initialize()
        @cars = Array.new []
    end

    def add(car)
       @cars.push(car) 
    end
    
    def load_from_file(path)
        i=0
        json_data = File.read(path)
        cares = Array.new()
        cares = JSON.parse(json_data)
        while (i<cares.size()) do
            @cars.add([cares[i], cares[i+1], cares[i+2], cares[i+3]])
        end
    end
end