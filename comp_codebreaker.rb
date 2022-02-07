class CompCodebreaker
  attr_reader :guess
  def initialize
    @guess = "0000"
  end

  def new_guess(code)
    new_guess = []
    @guess.each_char.with_index do |number, index|
      if number == code[index]
        new_guess.push(number)
      else
        new_guess.push((number.to_i + 1).to_s)
      end
    end
    @guess = new_guess.join
  end
end