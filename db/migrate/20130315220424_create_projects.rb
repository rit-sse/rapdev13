class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :permalink
      t.references :profile
      t.boolean :is_private

      t.timestamps
    end
    add_index :projects, :profile_id
  end
end
