class Game

  def initialize
    @canvas = SpaceCanvas.new
    @player = Player.new
    @enemies = Enemies.new(@canvas.width)
    @fires = []
  end

  def start
    init_keyboard
    main_loop(50) do
      @canvas.clear_background
      @canvas.draw_player(@player)
      update_fires
      @enemies.update
      @enemies.each {|e| @canvas.draw_enemy(e) }
    end
  end

  def main_loop(interval, &block)
    `setInterval(#{block.to_n}, #{interval})`
  end

  def init_keyboard
    %x(
      window.addEventListener("keydown",
        function(e) {
          if(e.keyCode == 32) { #{fire} }
          if(e.keyCode == 37) { #{@player.move_left} }
          if(e.keyCode == 39) { #{@player.move_right} }
        },
        false);
    )
  end

  def fire
    @fires << Fire.new(@player)
  end

  def update_fires
    @fires.each do |fire|
      fire.update_position
      @canvas.draw_fire(fire)
    end
    @fires.select! {|fire| fire.y >= 0 }
  end
end
