require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class RiverTest < MiniTest::Test
  def setup
    @fish1= Fish.new("Luis")
    @fish2= Fish.new("Pepe")
    @river= River.new("Amazonas")
  end

def test_get_river_name
  assert_equal("Amazonas", @river.name)
end

def test_add_fishes_to_river
  @river.add_fish(@fish1)
  @river.add_fish(@fish2)
  assert_equal(2, @river.fauna.length())
end

def test_remove_fish_from_river
  @river.add_fish(@fish1)
  @river.add_fish(@fish2)
  @river.remove_fish(@fish2)
  assert_equal(1, @river.fauna.length())
end

def test_total_fauna
  @river.add_fish(@fish1)
  @river.add_fish(@fish2)
  result = @river.total_fauna
  assert_equal(2, result)
end
#
# def test_count_fish
#   @river.add_fish(@fish1)
#   @river.add_fish(@fish2)
#   result = fauna_count(@river)
#   assert_equal(2, result)
# end

end
