class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish_amount = []
  end

  def fish_count()
    return @fish_amount.count
  end

  def add_fish(fish)
    @fish_amount << fish
  end

  def fish_amount()
    return @fish_amount
  end

  # def remove_fish(fish)
  #   index = @fish_amount.index(fish)
  #   @fish_amount.slice!(index, 1)
  # end



end
