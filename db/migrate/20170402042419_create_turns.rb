class CreateTurns < ActiveRecord::Migration[5.0]
  def change
    create_table :turns do |t|
      t.belongs_to    :game, index: true
      t.belongs_to    :player, index: true
      t.timestamps
    end
  end
end
