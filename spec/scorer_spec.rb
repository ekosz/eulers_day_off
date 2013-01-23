require 'spec_helper'

describe EulersDayOff::Scorer do

  let(:scorer) { EulersDayOff::Scorer.new(stub(:include? => true)) }

  it "gives a score of 0 for empty boards" do
    scorer.score(Array.new(5) { Array.new(5) }).should == 0
  end

  it "can score a coloum that starts with a word" do
    board = [ ["c", "a", "t", nil, nil], Array.new(5), Array.new(5), Array.new(5), Array.new(5) ]

    scorer.score(board).should == 3
  end

  it "can score a coloum that ends with a word" do
    board = [ [nil, nil, "c", "a", "t"], Array.new(5), Array.new(5), Array.new(5), Array.new(5) ]

    scorer.score(board).should == 3
  end

  it "can score a row that starts with a word" do
    board = [ ["c", nil, nil, nil, nil], ["a", nil, nil, nil, nil], ["t", nil, nil, nil, nil], Array.new(5), Array.new(5) ]

    scorer.score(board).should == 3
  end

  it "can score a row that ends with a word" do
    board = [ Array.new(5), Array.new(5), ["c", nil, nil, nil, nil], ["a", nil, nil, nil, nil], ["t", nil, nil, nil, nil] ]

    scorer.score(board).should == 3
  end

end
