require 'dockingstation'

describe DockingStation do


it {is_expected.to respond_to(:release_bike)}
it {is_expected.to respond_to(:return_bike)}

describe '#release_bike' do
  it 'can tell user there is no more bikes' do
    dockingstation = DockingStation.new

    expect {dockingstation.release_bike}.to raise_error(RuntimeError, "No more Bikes")
  end

end


end
