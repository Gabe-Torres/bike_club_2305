class Ride

    attr_reader :name,
                :distance, 
                :loop, 
                :terrain
  def initialize(info)
    @name = info[:name]
    @distance = info[:distance]
    @loop = info[:loop]
    @terrain =  info[:terrain]
  end

  def loop?
    @loop
  end

  def total_distance
    calculate_distance = @distance * 2
  end
end