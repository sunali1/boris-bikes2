require 'docking_station'
require 'bike'

describe DockingStation do
  station = DockingStation.new

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a returned bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  # expect(bike.count).to increase by 1
end
