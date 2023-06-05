require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  describe '#iteration 2' do
    it 'exist' do
      biker = Biker.new("Kenny", 30)

      expect(biker).to be_an_instance_of(Biker)
    end
  end 
end