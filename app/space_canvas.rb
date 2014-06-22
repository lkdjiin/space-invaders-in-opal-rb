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

  def draw_player(player)
    draw_rect(player.x, player.y, player.w, player.h, player.color)
  end

  def draw_enemy(enemy)
    draw_rect(enemy.x, enemy.y, enemy.w, enemy.h, enemy.color)
  end

  def draw_fire(fire)
    draw_rect(fire.x, fire.y, fire.w, fire.h, fire.color)
  end

  private

  def draw_rect(x, y, w, h, color)
    `#@context.fillStyle = #{color}`
    `#@context.fillRect(#{x}, #{y}, #{w}, #{h})`
  end

end


