require 'spec_helper'

describe EulersDayOff do
  it "can generate a random list of 25 letters" do
    letters = EulersDayOff.random_letters

    letters.size.should == 25
    letters.each do |letter|
      letter.should match(/\A[a-z]{1}\z/)
    end
  end

  it "can score a 5 x 5 board, ignoring pluals" do
    board = [ %w(c a t b y),
              %w(n r e u k),
              %w(m t a m s),
              %w(b t m s q),
              %w(i y s v w) ]

    EulersDayOff.score(board).should == 3 + # cat
                                        3 + # tam
                                        3 + # art
                                        4 + # team
                                        3   # bum
  end
end
