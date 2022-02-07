class PlayerCodebreaker
  attr_accessor :guess
  def initialize(guess)
    @guess = guess
    validation(@guess)
  end

  def validation(guess)
    until guess.match(/\d{4}/)
      puts "Invalid input. Make sure your guess is a 4-digit number."
      @guess = gets.chomp
      guess = @guess
    end
  end
end