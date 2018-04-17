require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")
require_relative("../bear")


class FishTest < MiniTest::Test
  def setup
    @fish1= Fish.new("Luis")
  end

def test_get_fish_name
  assert_equal("Luis", @fish1.name)
end


end
