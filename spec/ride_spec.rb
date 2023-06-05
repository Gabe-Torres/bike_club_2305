require './lib/ride'

RSpec.describe Ride do
  describe '#iteration 1' do
    it 'exist' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride).to_be_an_instance of(Ride)
    end
  end
end