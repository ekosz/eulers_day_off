require 'spec_helper'

describe EulersDayOff::LetterGenerator do
  let(:generator) { EulersDayOff::LetterGenerator.new }

  before do
    @mock = double()
    generator.letters = @mock
  end

  it "generates 25 letters" do
    @mock.should_receive(:sample).exactly(25).times.and_return('a')

    random_letters = generator.generate

    random_letters.size.should == 25
    random_letters.each { |letter| letter.should == 'a' }
  end

end
