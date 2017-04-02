class Turn < ApplicationRecord
  belongs_to  :score_sheet
  belongs_to  :player through: :score_sheet
  belongs_to  :game through: :score_sheet
  has_one     :score
  has_many    :rolls
end
