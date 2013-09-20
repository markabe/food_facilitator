require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/food_facilitator'

describe FoodFacilitator do
  before do
    @mock_communicator = Minitest::Mock.new
  end

  it "supplies a question and ballot box to communicator to collect votes" do
    @mock_communicator.expect(:inquire, "Tyler's", [/Tyler/, BallotBox])
    FoodFacilitator.new(@mock_communicator).start
    @mock_communicator.verify
  end
end
