class Player
  attr_reader :player_id, :name, :lives

  def initialize num
    @player_id = num
    @name = "Player #{@player_id}"
    @lives = 3
  end

  def kill
    @lives -= 1
  end

end