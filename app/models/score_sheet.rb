class ScoreSheet < ApplicationRecord
  belongs_to  :player
  belongs_to  :game
  has_one     :basic_section
  has_one     :kismet_section

  # def initialize(player, game)
  #   @player = player
  #   @game = game
  #   @basic_section = BasicSection.new(self)
  #   @kismet_section = KismetSection.new(self)
  # end
end
