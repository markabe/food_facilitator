require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/food_facilitator'

describe FoodFacilitator do
  before do
    @mock_communicator = Minitest::Mock.new
  end

  it "can ask where a user wants to eat" do
    @mock_communicator.expect(:inquire, "Tyler's", [/Tyler/])
    FoodFacilitator.new(@mock_communicator).start
    @mock_communicator.verify
  end

  it "can hear where a user wants to eat" do
  end
end
