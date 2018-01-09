class AddInstructionToScores < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :instruction, :string
  end
end
