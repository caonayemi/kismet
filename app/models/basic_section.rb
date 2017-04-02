class BasicSection < ApplicationRecord
  belongs_to  :score_sheet
  has_one     :aces_id, as: :scorable, class_name: "Score"
  has_one     :deuces_id, as: :scorable, class_name: "Score"
  has_one     :treys_id, as: :scorable, class_name: "Score"
  has_one     :fours_id, as: :scorable, class_name: "Score"
  has_one     :fives_id, as: :scorable, class_name: "Score"
  has_one     :sixes_id, as: :scorable, class_name: "Score"
end
