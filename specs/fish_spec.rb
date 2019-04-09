require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Sandy")
  end

  def test_fish_has_a_name
    assert_equal("Sandy", @fish1.name )
  end

end
