class Player < ApplicationRecord
  has_many  :score_sheets
  has_many  :games through: :score_sheets

  # attr_reader :username, :password, :email, :first_name, :last_name

  # def initialize(username, password, email, first_name, last_name)
  #   @username = username
  #   @password = password
  #   @email = email
  #   @first_name = first_name
  #   @last_name = last_name
  # end

  # def create_score_sheet(game)
  #   ScoreSheet.create!(
  #     player: self,
  #     game: game
  #   )
  # end
end
