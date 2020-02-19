require 'dockingstation'

describe DockingStation do


it {is_expected.to respond_to(:release_bike)}
it {is_expected.to respond_to(:return_bike)}

describe '#initialize' do
  it 'can change DEFAULT_CAPACITY' do
    dockingstation = DockingStation.new(30)
    expect(dockingstation.amount_of_bikes).to eq(30)
  end
end

describe '#initialize' do
  it 'can change DEFAULT_CAPACITY' do
    dockingstation = DockingStation.new
    expect(dockingstation.amount_of_bikes).to eq(20)
  end
end

describe '#release_bike' do

  it 'can tell user there is no more bikes' do
    dockingstation = DockingStation.new
    expect {dockingstation.release_bike}.to raise_error(RuntimeError, "No more Bikes")
  end

  it 'can raise an error if user returns broken bike' do
    dockingstation = DockingStation.new
    bike = Bike.new
    bike.report_broken
    expect(subject.release_bike).to raise_error(RuntimeError, "This bike is broken!")
  end
end

describe '#return_bike' do
it 'can tell user docking station is full' do
  dockingstation = DockingStation.new
  bike = Bike.new
  dockingstation.amount_of_bikes.times{dockingstation.return_bike(bike)}
  expect {dockingstation.return_bike(bike)}.to raise_error(RuntimeError, "Docking Station full")
 end
end
end
