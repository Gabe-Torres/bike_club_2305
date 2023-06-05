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

    it 'can report the total distance' do 
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      ride1.total_distance

      expect(ride1.total_distance).to eq(21.4)
    end

    it 'can have more rides' do 
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

      expect(ride2).to be_an_instance_of(Ride)
    end

    it 'can indicate if the new ride is a loop or not' do 
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

      ride2.loop? 

      expect(ride2.loop?).to eq(true)
    end
  end
end