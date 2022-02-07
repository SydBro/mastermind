class Game2
    #Player is the code maker, computer is the code breaker. 
    require_relative 'player_codemaker.rb'
    require_relative 'comp_codebreaker.rb'
    require 'colorize'
  
    def initialize
      puts "Your mission: Generate a secret code - and hope the computer can't guess it!"
      puts "The computer will have 12 tries to get the code right."
      puts "Type in your 4-digit code for this round."
      @maker = PlayerCodemaker.new(gets.chomp)
      @breaker = CompCodebreaker.new
      play()
    end
  
    def play
      puts "Your secret code is #{@maker.code}."
      11.times do
        puts "The computer's guess was #{@breaker.guess}."
        if @breaker.guess != @maker.code
          check_placement(@maker.code)
        else
          break
        end
      end
      if @breaker.guess == @maker.code
        puts "Sorry codemaker, the computer deciphered your code."
      else
        puts "Congrats codemaker, you stumped the machine!"
      end
    end
  
    def check_placement(code)
      if @breaker.guess != code
        @breaker.new_guess(code)
      end
      sleep(2)
    end
  end