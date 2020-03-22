require_relative 'auto'
require 'csv'
require_relative 'fleet'
cars = Fleet.new
CSV.foreach("cars.csv", headers: true) do |row|
    car = Auto.new(row['Brand'], row['Model'], Integer(row['Manifacture_year']), Float(row['Gasoline_consumption']))
    cars.add(car)
end
cars.to_s
