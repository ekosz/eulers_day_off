module EulersDayOff
  class LetterGenerator
    attr_writer :letters

    def initialize
      @letters = ('a'..'z').to_a
    end

    def generate
      Array.new(25) { @letters.sample }
    end
  end
end
