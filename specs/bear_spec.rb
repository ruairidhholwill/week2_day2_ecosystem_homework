require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Sandy")
    @fish2 = Fish.new("Jaws")
    @river1 = River.new("Clyde", [@fish1, @fish2])
    @bear1 = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_a_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_has_a_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_belly_count
    assert_equal(0, @bear1.bear_belly_count)
  end

  def test_add_a_fish_to_belly
    @bear1.add_a_fish(@fish1)
    assert_equal(1, @bear1.bear_belly_count)
  end

  def test_add_a_fish_to_bear_belly_and_remove_from_river
    @bear1.add_a_fish_to_bear_belly_and_remove_from_river(@river1)
    assert_equal(2, @bear1.bear_belly_count)
  end
end
