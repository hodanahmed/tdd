require 'dockingstation'

describe DockingStation do

it {is_expected.to respond_to(:release_bike)}
it {is_expected.to respond_to(:return_bike)}
it 'can see if bike is working' do
  docking = DockingStation.new
expect(docking.release_bike.is_it_working).to eq(true)
end
end
