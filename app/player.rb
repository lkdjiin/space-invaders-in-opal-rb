class Player
  DELTA = 10

  attr_accessor :x, :y, :w, :h, :color

  def initialize
    @x = 325
    @y = 560
    @w = 50
    @h = 30
    @color = 'green'
  end

  def move_left
    @x -= DELTA
  end

  def move_right
    @x += DELTA
  end

end

