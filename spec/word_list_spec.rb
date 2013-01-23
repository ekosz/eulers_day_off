require 'spec_helper'

describe EulersDayOff::WordList do
  let(:filter) { EulersDayOff::WordList.new }

  it "#insert" do
    filter.insert("blah")
    filter.should include("blah")
  end

end
