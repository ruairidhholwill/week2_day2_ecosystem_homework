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



end
