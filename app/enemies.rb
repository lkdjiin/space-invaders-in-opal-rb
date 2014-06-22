class Enemies
  include Enumerable
  ENEMIES_PER_ROW = 10
  SIDE_MARGIN = 10

  def initialize(world_width)
    @world_width = world_width
    @enemies = []
    @direction = :right
    build(60, '#0000ff')
    build(120, '#0000dd')
    build(180, '#0000bb')
    build(240, '#000099')
    build(300, '#000077')
  end

  def each(&block)
    @enemies.each(&block)
  end

  def update
    @enemies.each do |enemy|
      if side?(enemy)
        change_enemies_direction
        enemies_down
        break
      end
    end
    @enemies.map {|enemy| enemy.move(@direction) }
  end

  private

  def side?(enemy)
    enemy.x <= SIDE_MARGIN || enemy.x + enemy.w >= @world_width - SIDE_MARGIN
  end

  def change_enemies_direction
    if @direction == :left
      @direction = :right
    else
      @direction = :left
    end
  end

  def enemies_down
    @enemies.map(&:move_down)
  end

  def build(y, color)
    (1..ENEMIES_PER_ROW).each do |i|
      @enemies << Enemy.new(50 + i * 60, y, 40, 40, color)
    end
  end

end

