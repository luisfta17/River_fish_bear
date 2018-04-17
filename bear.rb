class Bear
  attr_reader(:name)
  attr_accessor(:name, :stomach)
  def initialize(name)
    @name = name
    @stomach = []
  end

  def eats(fish, river)
    @stomach.push(fish)
    river.remove_fish(fish)
  end

  def roar()
    "Roarrrrr"
  end

  def eaten_fish()
    return @stomach.length
  end
end
