class SpaceCanvas

  attr_reader :width

  def initialize
    @canvas  = `document.getElementById('canvas')`
    @context = `#@canvas.getContext('2d')`
    @height  = `#@canvas.height`
    @width   = `#@canvas.width`
  end

  def clear_background
    draw_rect(0, 0, @width, @height, 'black')
  end

  def draw_object(object)
    draw_rect(object.x, object.y, object.w, object.h, object.color)
  end
  alias_method :draw_player, :draw_object
  alias_method :draw_enemy, :draw_object
  alias_method :draw_fire, :draw_object

  private

  def draw_rect(x, y, w, h, color)
    `#@context.fillStyle = #{color}`
    `#@context.fillRect(#{x}, #{y}, #{w}, #{h})`
  end

end


