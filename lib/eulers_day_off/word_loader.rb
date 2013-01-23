module EulersDayOff
  class WordLoader

    attr_writer :file

    def initialize(path)
      @path = path
    end

    def populate_word_list(filter = EulersDayOff::WordList.new)
      @file ||= File.new(@path)

      @file.each_line do |line|
        filter.insert line.chomp
      end

      filter
    end
  end
end
