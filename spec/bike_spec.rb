require 'bike'

describe Bike do

it 'can be reported as broken' do
  #subject is instance of class Bike
  subject.report_broken
  expect(subject).to be_broken
end

end
