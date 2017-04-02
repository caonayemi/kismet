class CreateDies < ActiveRecord::Migration[5.0]
  def change
    create_table :dies do |t|

      t.timestamps
    end
  end
end
