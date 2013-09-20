class FoodFacilitator
  RESTAURANTS = [
   "Tyler's",
   "Mellow Mushroom",
  ].freeze

  def initialize(communicator)
    @communicator = communicator
  end

  def start
    question =<<-EOS
      Where would you like to eat? \
      How about #{RESTAURANTS.join(', ')}? Please pick a number.
    EOS
    answer = @communicator.inquire(question, BallotBox.new)
  end

  private
  attr_reader :communicator
end

class BallotBox

end
