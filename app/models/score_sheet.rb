class ScoreSheet < ApplicationRecord
  belongs_to  :player
  belongs_to  :game
  has_one     :basic_section
  has_one     :kismet_section
end
