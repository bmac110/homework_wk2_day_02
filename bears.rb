class Bears

  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def get_bear_name()
    return @name
  end

  def stomach_food_count()
    return @stomach.size()
  end

  def eat_fish(fish)
    return @stomach << fish
  end

  # def remove_fish_river(fish)
  #   index = fish_amount.index(fish)
  #   fish_amount.slice!(index, 1)
  # end

  def bear_roar()
    return "ROAR!!"
  end

end
