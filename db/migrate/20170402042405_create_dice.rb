class CreateDice < ActiveRecord::Migration[5.0]
  def change
    create_table :dice do |t|
      t.integer     :num_showing
      t.string      :color_showing
      t.boolean     :is_saved
      t.belongs_to  :roll, index: true
      t.timestamps
    end
  end
end
