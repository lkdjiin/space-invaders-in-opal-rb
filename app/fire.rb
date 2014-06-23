class Fire
  SIDE = 4
  DELTA = 5

  attr_reader :x, :y

  def initialize(player)
    @x = player.x + player.w / 2
    @y = player.y - SIDE
  end

  def w; SIDE; end

  def h; SIDE; end

  def color; "white"; end

  def update_position
    @y -= DELTA
  end
end
