require 'dockingstation'

describe DockingStation do

it {is_expected.to respond_to(:release_bike)}
it {is_expected.to respond_to(:return_bike)}
end
