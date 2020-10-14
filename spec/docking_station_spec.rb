require "Docking_Station_1"


  RSpec.describe DockingStation do


    describe "release_bike" do
      it 'releases a bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
      it'raises an error when there are no bikes available' do
        expect { subject.release_bike}.to raise_error 'No bikes available'
      end
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
