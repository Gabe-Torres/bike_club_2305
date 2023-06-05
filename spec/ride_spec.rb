require './lib/ride'

RSpec.describe Ride do
  describe '#iteration 1' do
    it 'exist' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride1).to be_an_instance_of(Ride)
    end

    it 'is initialized with attributes' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride1.name).to eq("Walnut Creek Trail")
      expect(ride1.distance).to eq(10.7)
      expect(ride1.loop).to eq(false)
      expect(ride1.terrain).to eq(:hills)
    end

    it 'can indicate if the ride is a loop or not' do 
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      ride1.loop? 

      expect(ride1.loop?).to eq(false)
    end
  end
end