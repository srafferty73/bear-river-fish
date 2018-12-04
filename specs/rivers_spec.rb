require('minitest/autorun')
require('minitest/rg')
require_relative('../rivers')
require_relative('../fish')


class TestRivers < Minitest::Test

  def setup
    @rivers = Rivers.new("Amazon")
    @fish2 = Fish.new("Nemo")
  end

  def test_river_name
    assert_equal("Amazon", @rivers.river_name)
    p "The river is called #{@rivers.river_name}."
  end

  def test_add_fish
    @rivers.add_fish(@fish2)
    assert_equal(1, @rivers.fish_count)
    p "A fish has entered the river."
  end

  def test_remove_fish
    @rivers.remove_fish(@fish2)
    assert_equal(0, @rivers.fish_count)
    p "A fish has left the river."
  end

  def test_fish_count
    assert_equal(0, @rivers.fish_count)
    p "There are #{@rivers.fish_count} fish in the river."
  end
end
