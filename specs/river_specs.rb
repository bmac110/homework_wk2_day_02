require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon")


    @fish1 = Fish.new("Flounder")
    @fish2 = Fish.new("Jimmy")
    @fish3 = Fish.new("Chips")
    @fish4 = Fish.new("Bait")
    @fish5 = Fish.new("Scales")
    @fish6 = Fish.new("Laura")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]
  end

  def test_fish_count()
    assert_equal(0, @river.fish_count)
  end


  def test_add_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    @river.add_fish(@fish5)
    @river.add_fish(@fish6)
    assert_equal(6, @river.fish_count)
  end

  # def test_remove_fish()
  #   @river.remove_fish()
  #
  # end


end
