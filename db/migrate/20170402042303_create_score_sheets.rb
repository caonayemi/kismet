class CreateScoreSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :score_sheets do |t|

      t.timestamps
    end
  end
end
