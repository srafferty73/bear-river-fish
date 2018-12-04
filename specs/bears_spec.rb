require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../fish')


class TestBears < Minitest::Test
  def setup
    @bear1 = Bear.new("Hercules", "Grizzly", "Bear roars!", [])
    @fish3 = Fish.new("Finlay")
    @fish4 = Fish.new("Gill")
  end

  def test_bear_name
    assert_equal("Hercules", @bear1.bear_name)
    p "Bear name is: #{@bear1.bear_name}."
  end

  def test_bear_type
    assert_equal("Grizzly", @bear1.bear_type)
    p "Bear type is: #{@bear1.bear_type}."
  end

  def test_get_fish_from_river
    @bear1.add_fish(@fish3)
    p "Bear eats a fish.  CHOMP!"
    assert_equal(1, @bear1.stomach_count)
    p "Bear stomach holds #{@bear1.stomach_count} fish."
  end

  def test_roar
    assert_equal("Bear roars!", @bear1.roar)
    p "ROOOAR!!!"
  end

  def test_food_count
    assert_equal(0, @bear1.stomach_count)
    p "Bear stomach is empty now."
  end
end
