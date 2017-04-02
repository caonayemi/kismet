class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.references  :scorable, polymorphic: true, index: true
      t.belongs_to  :turn, index: true
      t.string      :name
      t.string      :hint
      t.integer     :points
      t.timestamps
    end
  end
end
