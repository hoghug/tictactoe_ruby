class Space

  attr_reader :space_num

  @@all_spaces = []

  def initialize(space_num)
    @space_num = space_num
  end

  def Space.create(space_num)
    new_space = Space.new(space_num)
    new_space.save
    new_space
  end

  def save
    @@all_spaces << self
  end

  def set_value(player_marker)
    @space_num = player_marker
  end

end
