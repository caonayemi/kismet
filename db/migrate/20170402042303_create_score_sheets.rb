class CreateScoreSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :score_sheets do |t|
      t.belongs_to  :player, index: true
      t.belongs_to  :game, index: true
      t.integer     :total_score
      t.timestamps
    end
  end
end
