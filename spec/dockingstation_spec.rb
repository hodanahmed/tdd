require 'dockingstation'

describe DockingStation do


it {is_expected.to respond_to(:release_bike)}
it {is_expected.to respond_to(:return_bike)}

describe '#release_bike' do
  it 'can tell user there is no more bikes' do
    dockingstation = DockingStation.new
    dockingstation.bike.times{dockingstation.release_bike}
    expect {dockingstation.release_bike}.to raise_error(RuntimeError, "No more Bikes")
  end
end

describe '#return_bike' do
it 'can tell user docking station is full' do
  dockingstation = DockingStation.new
  expect {dockingstation.return_bike}.to raise_error(RuntimeError, "Docking Station full")
 end
end
end
