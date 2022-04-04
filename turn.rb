require_relative './question'
require_relative './player'

class Turn

  def initialize player
    @current_player = player
  end

  def take_next_turn
    question = Question.new
    answer_is_correct = question.ask_question
    
    if answer_is_correct == false
      @current_player.kill
      puts ""
      puts "You have #{@current_player.lives} lives remaining!"
      puts ""
    else
      puts ""
      puts "No lives were lost in this round!"
      puts ""
    end
  end
end