class PlayerCodemaker
    attr_accessor :code
    def initialize(code)
        @code = code
        validation(code)
    end

    def validation(code)
      until (code.match(/\d{4}/) && code.length < 5)
        puts "Invalid input. Make sure your code is a 4-digit number."
        @code = gets.chomp
        code = @code
      end
    end
end