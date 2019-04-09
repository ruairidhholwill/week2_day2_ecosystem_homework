require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Sandy")
    fish2 = Fish.new("Jaws")
    fish3 = Fish.new("Clive")
    fishes = [fish1, fish2, fish3]
    @river1 = River.new("Clyde", fishes)
  end

  def test_river_has_a_name
    assert_equal("Clyde", @river1.name)
  end

  def test_river_fish_population
    assert_equal(3, @river1.fish_population_count)
  end
  
end
