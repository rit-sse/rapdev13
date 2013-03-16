class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :profile
      t.references :submission
      t.text :comment
      t.integer :usefulness
      t.boolean :inappropriate_flag

      t.timestamps
    end
    add_index :comments, :profile_id
    add_index :comments, :submission_id
  end
end
