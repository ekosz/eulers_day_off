module EulersDayOff
  class Scorer

    attr_writer :word_list

    def initialize(word_list)
      @word_list = word_list
    end

    def score(board)
      _score_board(board) + _score_board(board.transpose)
    end

    private

    def _score_board(board)
      board.inject(0) do |acc, row|
        return acc unless row.compact.length >= 3
        acc + _score_row(row)
      end
    end

    def _score_row(row)
      (3..row.compact.size).to_a.reverse.each do |length|
        row.each_cons(length) do |cons|
          return length if @word_list.include?(cons.join)
        end
      end

      0
    end

  end
end
