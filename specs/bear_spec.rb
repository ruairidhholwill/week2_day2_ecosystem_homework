require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_a_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_has_a_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_has_empty_belly
    assert_equal(0, @bear1.bear_belly_count)
  end
end
