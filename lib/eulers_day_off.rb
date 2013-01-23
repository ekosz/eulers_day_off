

module EulersDayOff


  def self.random_letters
    LetterGenerator.new.generate
  end

  def self.score(board)
    Scorer.new(word_list).score(board)
  end

  private

  def self.word_list
    @word_list ||= begin 
                     path = File.expand_path("../word_list.txt", __FILE__)
                     WordLoader.new(path).populate_word_list
                   end
  end

end

require 'eulers_day_off/letter_generator'
require 'eulers_day_off/word_list'
require 'eulers_day_off/word_loader'
require 'eulers_day_off/scorer'
