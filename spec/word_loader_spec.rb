require 'spec_helper'

describe EulersDayOff::WordLoader do
  let(:loader) { EulersDayOff::WordLoader.new("FAKE_PATH") }

  before do
    @file_mock = double("file")
    loader.file = @file_mock
  end

  it "creates a bloom filter from the word list" do
    @file_mock.should_receive(:each_line).and_yield("cat\n").and_yield("dog")

    bloom_filter_mock = double("bloom filter")
    bloom_filter_mock.should_receive(:insert).with('cat')
    bloom_filter_mock.should_receive(:insert).with('dog')

    word_list = loader.populate_word_list(bloom_filter_mock)

    word_list.should be(bloom_filter_mock)
  end

end
