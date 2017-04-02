class Game < ApplicationRecord
  has_many  :score_sheets
  has_many  :players through: :score_sheets
end
