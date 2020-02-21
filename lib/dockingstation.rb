require_relative 'bike'
class DockingStation
DEFAULT_CAPACITY = 20
attr_reader :amount_of_bikes, :bikes
def initialize(amount_of_bikes = DEFAULT_CAPACITY)
  @bikes = []
  @amount_of_bikes = amount_of_bikes
end

def return_bike(bike)
  if full?
    raise 'Docking Station full'
  end
  @bikes.push(bike)
  @bike = bike
end

def show_bikes
  @bikes
end

def release_bike
  if empty?
    raise 'No more Bikes'
  end
  if @bike.broken?
    raise 'This bike is broken!'
  end

 @bikes.pop
  end

private
def full?
  @bikes.count == @amount_of_bikes
end

def empty?
  @bikes.count == 0
end
end
