class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :profile
      t.string :comment
      t.int :usefulness
      t.bool :inappropriate_flag

      t.timestamps
    end
    add_index :comments, :profile_id
  end
end
