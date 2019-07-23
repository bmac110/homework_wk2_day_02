require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../river')
require_relative('../fish')

class TestBears < MiniTest::Test
  def setup()
    @bear = Bears.new("Bossy", "Koala")
    @fish1 = Fish.new("Flounder")
    @fish2 = Fish.new("Jimmy")
    @fish3 = Fish.new("Chips")
    @river = River.new("Amazon")

  end

  def test_get_bear_name()
    assert_equal("Bossy", @bear.name)
  end

  def test_stomach_food_count()
    assert_equal(0, @bear.stomach_food_count)
  end

  def test_eat_fish()
    @bear.eat_fish(@fish1)
    @bear.eat_fish(@fish2)
    @bear.eat_fish(@fish3)
    assert_equal(3, @bear.stomach_food_count)
    # @river.remove_fish_river(@fish1)
    # @river.remove_fish_river(@fish2)
    # @river.remove_fish_river(@fish3)
    # assert_equal(3, @river.fish_count)
  end

  def test_bear_roar()
    assert_equal("ROAR!!", @bear.bear_roar)
  end


  # def_test_remove_fish_river()
end
