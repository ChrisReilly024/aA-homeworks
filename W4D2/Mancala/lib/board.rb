class Board
  attr_accessor :cups
  attr_reader :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  
  def place_stones
    cups.map {|cup| 4.times {cup << :stone} }
    cups[6] = []
    cups[13] = []
  end
  
  def valid_move?(pos)
    raise 'Invalid starting cup' if pos > 13 || pos < 0
    raise 'Starting cup is empty' if @cups[pos].empty?
    true
  end

  # a = Board.new('me','you')
  # p a.valid_move?(0)
  
  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].length
    @cups[start_pos] = []
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
