class Rivers

  attr_reader :river_name

  def initialize(river_name)
    @river_name = river_name
    @fish_in_river = []
  end

  def river_name
    return @river_name
  end

  def fish_count
    return @fish_in_river.length()
  end

  def add_fish(new_fish)
    @fish_in_river << new_fish
  end

  def remove_fish(fish)
  index = @fish_in_river.index(fish)
  @fish_in_river.pop
  end

end
