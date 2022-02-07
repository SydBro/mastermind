class Manager
  require_relative 'game_1.rb'
  require_relative 'game_2.rb'

  def initialize
    puts "Welcome to this game of Mastermind!"
    player_choice()
  end
  
  def player_choice
    puts "Would you like to create a code for the computer to guess?"
    sleep(2)
    puts "Or would you like to decipher the computer's code?"
    sleep(2)
    puts "Type 'M' to be the codemaker, or 'B' to be the codebreaker."
    choice = gets.chomp

    until (choice == "M" || choice == "B")
      puts "Type 'M' to be the codemaker, or 'B' to be the codebreaker."
      choice = gets.chomp
    end

    if choice == "B"
      puts "You are now the codebreaker!"
      p_breaker = Game1.new
    elsif choice == "M"
      puts "You are now the codemaker!"
      p_maker = Game2.new
    end
  end
end

lets_play = Manager.new