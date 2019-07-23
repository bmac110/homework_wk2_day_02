require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test
  def setup()
    @fish = Fish.new("salmon")
  end

  def test_fish_name
    assert_equal("salmon", @fish.name)
  end
end
