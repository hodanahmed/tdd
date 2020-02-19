require_relative 'bike'
class DockingStation
attr_reader :bike
def initialize(amount_of_bikes = 3)
  @bike = amount_of_bikes
  @amount_of_bikes = amount_of_bikes
end

def return_bike
  if @bike == @amount_of_bikes
    raise 'Docking Station full'
  end
  @bike += 1
end

def show_bikes
  @bike
end

def release_bike
  if @bike == 0
    raise 'No more Bikes'
  end
 @bike -= 1
 bike =  Bike.new
  end
end
