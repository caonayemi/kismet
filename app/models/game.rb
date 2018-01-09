class Game < ApplicationRecord
  has_many  :score_sheets
  has_many  :players through: :score_sheets

  # def initialize (player_1, player_2 = nil, player_3 = nil, player_4 = nil)
  #   @player_1 = player_1
  #   @player_2 = player_2
  #   @player_3 = player_3
  #   @player_4 = player_4
  #   #TODO: Add validations for players to be Player objects

  #   players = [@player_1, @player_2, @player_3, @player_4].compact # removes nil values

  #   players.each { | player | player.create_score_sheet() }
  # end
end
