require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  describe '#iteration 2' do
    it 'exist' do
      biker = Biker.new("Kenny", 30)

      expect(biker).to be_an_instance_of(Biker)
    end

    it 'is initialized with attributes' do
      biker = Biker.new("Kenny", 30)

      expect(biker.name).to eq("Kenny")
      expect(biker.max_distance).to eq(30)
      expect(biker.rides).to be_an_instance_of(Hash) 
      expect(biker.acceptable_terrain).to be_an_instance_of(Array)
    end

    it "can have biker learn terrain" do 
      biker = Biker.new("Kenny", 30)

      biker.learn_terrain!(:gravel)
      biker.learn_terrain!(:hills)

      expect(biker.acceptable_terrain).to eq([:gravel, :hills])
    end
  end 
end