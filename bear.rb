class Bear

  attr_reader :name, :type
  attr_writer :belly_contents

  def initialize(name, type, belly_contents = [])
    @name = name
    @type = type
    @belly_contents = belly_contents
  end

  def bear_belly_count()
    return @belly_contents.length
  end

  def add_a_fish(fish)
    @belly_contents << fish
  end

  def add_a_fish_to_bear_belly_and_remove_from_river(river)
    for fish in river.fish_population
      add_a_fish(fish)
    end
  end

end
