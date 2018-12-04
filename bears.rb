class Bear

  attr_reader :bear_name

  def initialize(bear_name, bear_type, roar, stomach_contents)
    @bear_name = bear_name
    @bear_type = bear_type
    @roar = roar
    @stomach_contents = []

  end

  def bear_name
    return @bear_name
  end

  def bear_type
    return @bear_type
  end

  def add_fish(new_fish)
    @stomach_contents << new_fish
  end

  def stomach_count
    return @stomach_contents.length()
  end

  def roar
    return @roar
  end

  def food_count
    return @stomach_contents.length()
  end
end
