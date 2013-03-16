class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.references :profile

      t.timestamps
    end
    add_index :organizations, :profile_id
  end
end
