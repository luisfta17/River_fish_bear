require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class BearTest < MiniTest::Test
  def setup
    @fish1= Fish.new("Luis")
    @fish2= Fish.new("Pepe")
    @fish3 = Fish.new("Fernanda")
    @river= River.new("Amazonas")
    @bear= Bear.new("Yogi")
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_eats
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @bear.eats(@fish2, @river)
    assert_equal(1, @bear.stomach.length)
    assert_equal(2, @river.fauna.length)
  end

  def test_roar
    assert_equal("Roarrrrr", @bear.roar())
  end

  def test_eaten_fish
    @river.add_fish(@fish3)
    @bear.eats(@fish3, @river)
    assert_equal(1, @bear.eaten_fish)
  end


end
