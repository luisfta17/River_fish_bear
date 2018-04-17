class River
  attr_reader(:name, :fauna)
  attr_writer(:fauna)

  def initialize(name)
    @name = name
    @fauna = []
  end

  def add_fish(fish)
    @fauna.push(fish)
  end

  def remove_fish(fish)
    @fauna.delete(fish)
  end

  def total_fauna()
    return @fauna.length
  end
  # def fauna_count(river)
  # end
end
