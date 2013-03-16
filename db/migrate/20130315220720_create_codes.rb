class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.text :entry
      t.text :expected_output
      t.references :language
      t.references :submission

      t.timestamps
    end
    add_index :codes, :language_id
    add_index :codes, :submission_id
  end
end
