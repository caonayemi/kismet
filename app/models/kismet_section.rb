class KismetSection < ApplicationRecord
  belongs_to  :score_sheet
  has_one     :two_pair_id, as: :scorable, class_name: "Score"
  has_one     :three_of_a_kind_id, as: :scorable, class_name: "Score"
  has_one     :straight_id, as: :scorable, class_name: "Score"
  has_one     :flush_id, as: :scorable, class_name: "Score"
  has_one     :full_house_id, as: :scorable, class_name: "Score"
  has_one     :full_house_same_color_id, as: :scorable, class_name: "Score"
  has_one     :four_of_a_kind_id, as: :scorable, class_name: "Score"
  has_one     :yarborough_id, as: :scorable, class_name: "Score"
  has_one     :kismet_id, as: :scorable, class_name: "Score"

  # def initialize(score_sheet)
  #   @score_sheet = score_sheet
  #   @two_pair = Score.create!('2 Pair', 'Same Color', 'Total all dice')
  #   @three_of_a_kind = Score.create!('3 of a Kind', '', 'Total all dice')
  #   @straight = Score.create!('Straight', "1, 2, 3, 4, 5, or\n2, 3, 4, 5, 6", '30')
  #   @flush = Score.create!('Flush', 'All Same Color', '35')
  #   @full_house = Score.create!('Full House', '', "Total all dice\nplus 15")
  #   @full_house_same_color = Score.create!('Full House', 'Same Color', "Total all dice\nplus 20")
  #   @four_of_a_kind = Score.create!('4 of a Kind', '', "Total all dice\nplus 25")
  #   @yarborough = Score.create!('Yarborough', '', 'Total all dice')
  #   @kismet = Score.create!('KISMET', '5 of a Kind', "Total all dice\nplus 50")
  #   @total = 0
  # end
end
