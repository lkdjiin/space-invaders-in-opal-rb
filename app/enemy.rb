class Enemy
  DELTA = 2

  attr_accessor :x, :y, :w, :h, :color

  def initialize(x, y, w, h, color)
    @x = x
    @y = y
    @w = w
    @h = h
    @color = color
  end

  def move_left
    @x -= DELTA
  end

  def move_right
    @x += DELTA
  end

  def move(direction)
    direction == :left ? move_left : move_right
  end

  def move_down
    @y += 4
  end
end

