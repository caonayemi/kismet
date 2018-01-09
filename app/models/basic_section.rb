class BasicSection < ApplicationRecord
  belongs_to  :score_sheet
  has_one     :aces_id, as: :scorable, class_name: "Score"
  has_one     :deuces_id, as: :scorable, class_name: "Score"
  has_one     :treys_id, as: :scorable, class_name: "Score"
  has_one     :fours_id, as: :scorable, class_name: "Score"
  has_one     :fives_id, as: :scorable, class_name: "Score"
  has_one     :sixes_id, as: :scorable, class_name: "Score"

  # attr_reader :score_sheet
  # attr_accessor :subtotal, :bonus, :total

  # def initialize(score_sheet)
  #   @score_sheet = score_sheet
  #   @aces = Score.create!('Aces', '', '1 for each ace')
  #   @deuces = Score.create!('Deuces', '', '2 for each deuce')
  #   @treys = Score.create!('Treys', '', '3 for each trey')
  #   @fours = Score.create!('Fours', '', '4 for each four')
  #   @fives = Score.create!('Fives', '', '5 for each five')
  #   @sixes = Score.create!('Sixes', '', '6 for each six')
  #   @subtotal = 0
  #   @bonus = 0
  #   @total = 0
  # end
end
