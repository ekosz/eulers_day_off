module EulersDayOff
  class WordList

    def initialize
      @data = []
    end

    def insert(element)
      @data << element
    end

    def include?(element)
      @data.include?(element)
    end
  end
end
