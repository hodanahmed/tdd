class Bike
attr_reader :cycle
def report_broken
  @broken = true
end

def broken?
  @broken
  end
end
