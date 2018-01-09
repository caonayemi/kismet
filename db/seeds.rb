# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all if Player.all.count > 0
Game.destroy_all if Game.all.count > 0
ScoreSheet.destroy_all if ScoreSheet.all.count > 0
BasicSection.destroy_all if BasicSection.all.count > 0
KismetSection.destroy_all if KismetSection.all.count > 0
Score.destroy_all if Score.all.count > 0
Die.destroy_all if Die.all.count > 0
Roll.destroy_all if Roll.all.count > 0
Turn.destroy_all if Turn.all.count > 0

player_1 = Player.create!(
  username: "player_1",
  password: "password!",
  email:   "p1@mail.com",
  first_name: "Jane",
  last_name: "Doe"
)

# player_2 = Player.create!(
#   username: "player_2",
#   password: "password!",
#   email:   "p2@mail.com",
#   first_name: "Joe",
#   last_name: "Sample"
# )

game_1 = Game.create!(
  player_1: player_1
)

ss_1 = ScoreSheet.find_by(
  player_1: player_1,
  game: game_1
)
bs_1 = ss_1.basic_section
ks_1 = ss_1.kismet_section
