class Question

  attr_reader :num_1, :num_2

  def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
  end

  def ask_question
    puts "What is #{@num_1} plus #{@num_2}"

    user_input = gets.chomp.to_i

    if user_input == num_1 + num_2
      puts ""
      puts "Congratulations! Your answer is correct!"
      return true
    else
      puts "Your answer is incorrect! You just lost a life!"
      return false
    end
  end

end