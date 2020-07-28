require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new()}
    self.place_stones
    @name1 = name1
    @name2 = name2

  end

  def place_stones
    # debugger
    (0..12).each do |i|
      if i == 6
        next
      end
      @cups[i] = [:stone, :stone, :stone, :stone]
    end
  end

  def valid_move?(start_pos)
    if start_pos == 6 || start_pos > 12
        raise "Invalid starting cup"
    end
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    in_hand = @cups[start_pos]

    @cups[start_pos] = []

    start_pos += 1
    positions = []

    in_hand.each_with_index do |stone, i|
      position = (i + start_pos) % 14
      # debugger
      if position == self.other_player_goal(current_player_name)
        position += 1
        start_pos += 1
      else
        @cups[position] << stone
        positions << position
      end
    end

    self.render
    # debugger
    spot = positions.last
    next_turn(spot)
    
    

  end

  def other_player_goal(current_player_name)
    if current_player_name == @name1
      return 13
    else
      return 6
    end
  end

  def next_turn(ending_cup_idx)
    # debugger
    # whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].count == 1
      return :switch
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..6].all? {|cup| cup.empty?} ||
    @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    player_1_count = @cups[6].count
    player_2_count = @cups[13].count

    if player_1_count > player_2_count
       return @name1 
    elsif  player_2_count > player_1_count
      return @name2
    else
      return :draw
    end

  end
end
