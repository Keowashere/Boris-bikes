require "Bike.rb"

RSpec.describe Bike do
  it "Checks if bike works" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
