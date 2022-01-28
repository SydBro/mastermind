class Codemaker
    attr_reader :code
    def initialize
        @code = rand(1000...9999).to_s
    end
end