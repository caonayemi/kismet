class Score < ApplicationRecord
  belongs_to  :scorable, polymorphic: true
  belongs_to  :turn

  # attr_reader :name, :hint
  # attr_accessor :points

  # def initialize (name, hint)
  #   @name = name
  #   @hint = hint
  # end
end
