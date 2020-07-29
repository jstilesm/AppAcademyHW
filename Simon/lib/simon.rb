require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over
      self.take_turn
    end
    self.reset_game
    self.game_over_message
    
  end

  def take_turn
    self.require_sequence
    if game_over == false
      @sequence_length += 1
      self.round_success_message
      self.show_sequence
    end
    
  end

  def show_sequence
    self.add_random_color
    @seq.each do |color|
      puts color
    end
  end

  def require_sequence
    puts "Repeat the Sequence by Naming the cCrrect Collors"
    @seq.each do |color|
      guess = gets.chomp
      if color[0] != guess
        game_over = true
        break
      end
    end


  end

  def add_random_color
    @seq << COLORS.sample

  end

  def round_success_message
    puts "Success"
  end

  def game_over_message
    puts "You Lose"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false

  end
end
