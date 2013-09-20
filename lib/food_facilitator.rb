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
      How about #{RESTAURANTS.join(', ')}? Pleas pick a number.
    EOS
    @communicator.inquire(question)
  end

  private
  attr_reader :communicator
end
