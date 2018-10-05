require './lib/docking_station.rb'
require './lib/bike'

describe DockingStation do

  DEFAULT_CAPACITY = 20

  it 'Set a capacity to what the user inputs' do

  end


  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it "To show a bike has been docked" do
    bike = Bike.new
    expect(DockingStation.new.dock(bike)).to eq "Bike Docked"
  end

  it "raises an error when dock is at full capacity" do
    DEFAULT_CAPACITY.times do
      bike = Bike.new
      subject.dock(bike)
    end
    bike = Bike.new
    expect {subject.dock(bike)}.to raise_error "Docking station full"
  end

end
