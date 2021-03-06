class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1)
    @sequence_length = sequence_length
    @seq = []
    @game_over = false    
  end

  def play
    take_turn 
    if @game_over == false
      play
    else
      game_over_message
      reset_game
    end
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
  end      

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    seq << COLORS[rand(0...COLORS.length)]
  end

  def round_success_message
    'Good job! sequence complete'
  end

  def game_over_message
    'Incorrect sequence. Game over'
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1
  end
end



