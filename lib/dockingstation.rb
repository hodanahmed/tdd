require_relative 'bike'
class DockingStation
attr_reader :bike
def initialize(amount_of_bikes = 10)
  @bike = amount_of_bikes
end

def release_bike
  @bike -= 1
  bike =  Bike.new
end

def return_bike
  @bike += 1
end

def show_bikes
  @bike
end
end
