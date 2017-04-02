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
end
