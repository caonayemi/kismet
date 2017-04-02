class Score < ApplicationRecord
  belongs_to  :scorable, polymorphic: true
  belongs_to  :turn
end
