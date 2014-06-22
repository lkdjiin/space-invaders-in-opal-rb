class Fire
  WIDTH = 4
  DELTA = 5

  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def w; WIDTH; end

  def h; WIDTH; end

  def color; "white"; end

  def update_position
    @y -= DELTA
  end
end
