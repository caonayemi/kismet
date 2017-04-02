#Schema
###Player
username - string
password - hash
email - string
first_name - string
last_name - string
high_score - integer
average_score - integer
num_games_played - integer
(num_wins) - integer
(num_losses) - integer

###Game
player_1_id
(player_2_id) can be null
(player_3_id) can be null
(player_4_id) can be null
(winner) - string can be null

###Score Sheet
player_id
game_id
basic_section_score_id
kismet_section_score_id
total_score - integer

###Basic Section
aces_id
deuces_id
treys_id
fours_id
fives_id
sixes_id
subtotal - integer
bonus - integer
total - integer

###Kismet Section
two_pair (same color)_id
three_of_a_kind_id
straight_id
flush_id
full_house_id
full_house_same_color_id
four_of_a_kind_id
yarborough_id
kismet_id
total - integer

###Score
name - string
hint - string
points - integer

###Die
num_showing - integer
color_showing - string
is_saved - boolean

###Roll
die_1_id
die_2_id
die_3_id
die_4_id
die_5_id

###Turn
game_id
player_id
roll_1_id
roll_2_id
roll_3_id
score_id
