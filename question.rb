class Question
  MAX_NUM = 20
  
  def get_random_number(i)
    rand(1..i)
  end
  
  def initialize
    @num1 = get_random_number(MAX_NUM)
    @num2 = get_random_number(MAX_NUM)
  end

  def ask
    puts "What does #{@num1} plus #{@num2} equal?"
    answer = gets.chomp
    if answer.to_i == @num1 + @num2
      puts 'YES! You are correct!'
      true
    else
      puts 'SERIOUSLY? No!'
      false
    end
  end
end