require "Docking_Station_1"


  RSpec.describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it "docks a bike" do
      bike = Bike.new

      expect(subject.dock(bike)).to eq bike
    end


    it "returns docked bikes" do
     bike = Bike.new
     #Set up assert
     subject.dock(bike)
     expect(subject.bike).to eq bike
    end
  end
