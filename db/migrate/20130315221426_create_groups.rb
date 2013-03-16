class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.boolean :is_private
      t.references :profile

      t.timestamps
    end
    add_index :groups, :profile_id
  end
end
