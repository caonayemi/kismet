class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string      :username
      t.string      :password_hash
      t.string      :email
      t.string      :first_name
      t.string      :last_name
      t.integer     :high_score
      t.integer     :average_score
      t.integer     :num_games_played
      t.timestamps
    end
  end
end
