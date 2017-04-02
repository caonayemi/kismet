class CreateBasicSections < ActiveRecord::Migration[5.0]
  def change
    create_table :basic_sections do |t|
      t.belongs_to  :score_sheet
      t.integer     :subtotal
      t.integer     :bonus
      t.integer     :total
      t.timestamps
    end
  end
end
