class Player < ApplicationRecord
  has_many  :score_sheets
  has_many  :games through: :score_sheets
end
