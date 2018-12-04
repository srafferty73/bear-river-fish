class Fish

attr_reader :fish_name

  def initialize(fish_name)
    @fish_name = fish_name
    @no_of_fish = []
  end

  def fish_name
    return @fish_name
  end

  # def add_fish(fish_name)
  #   @no_of_fish.push(fish_name)
  #   p "Number of fish: #{@no_of_fish}."
  # end

end
