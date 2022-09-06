# puts "HEllo World"

class Vehicle
  @@vehicals = 0

  def get_no_of_vehicals()
    return @@vehicals
  end
  
end


class Car < Vehicle
  def initialize(wheels, seats)
    @wheels = wheels
    @seats = seats
    @@vehicals += 1
  end
  
  def set_brand_name(brand_name)
    @brand_name = brand_name
  end  

  def get_brand_name()
    return @brand_name
  end

  def get_wheels()
    return @wheels
  end

  def get_seats()
    return @seats
  end
    
end

car1 = Car.new(4,4)
car1.set_brand_name("Toyota")
puts "Brand Name is " + car1.get_brand_name
puts car1.get_brand_name + " has " + car1.get_wheels.to_s + " wheels and " + car1.get_seats.to_s + " seats."
puts "   "

car2 = Car.new(4,4)
car2.set_brand_name("Honda")
puts "Brand Name is " + car2.get_brand_name
puts car2.get_brand_name + " has " + car2.get_wheels.to_s + " wheels and " + car2.get_seats.to_s + " seats."
puts "   "
puts car2.get_no_of_vehicals

