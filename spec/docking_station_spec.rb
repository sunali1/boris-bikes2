require 'docking_station'
require 'bike'

describe DockingStation do
  station = DockingStation.new

  describe '#releases bike' do
    it 'responds to release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end

    it 'docks a returned bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end

    it 'raises an error when no bikes are available' do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end# expect(bike.count).to increase by 1
  end
end
