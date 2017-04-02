class CreateKismetSections < ActiveRecord::Migration[5.0]
  def change
    create_table :kismet_sections do |t|

      t.timestamps
    end
  end
end
