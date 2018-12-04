require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < Minitest::Test
  def setup
    @fish1 = Fish.new("Jaws")
  end

  def test_fish_name
    assert_equal("Jaws", @fish1.fish_name)
    p "Fish name: #{@fish1.fish_name}"
  end
end
