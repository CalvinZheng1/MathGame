require './player.rb'
require './question.rb'

class Game  
  def initialize
    @turn = 0
    @players = [Player.new, Player.new]
  end

  def play
    current_player = @players[@turn]
    print "Player #{@turn + 1}: "
    
    question = Question.new
    is_correct = question.ask
    
    current_player.decrement_score if !is_correct
    
    if current_player.score > 0 
      print_scores
      puts '----- NEW TURN -----'
      @turn = @turn == 0 ? 1 : 0
      self.play
    else
      winner = @players[@turn === 0 ? 1 : 0]
      puts "Player #{@turn === 0 ? 2 : 1} wins with a score of #{winner.print_score}"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
    end
  end

  private

  def print_scores
    puts "P1: #{@players[0].print_score} vs P2:#{@players[1].print_score}"
  end
end