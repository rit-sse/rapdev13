class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.references :group
      t.string :name
      t.text :about_me
      t.string :github

      t.timestamps
    end
    add_index :profiles, :user_id

    create_table :organizations_profiles, :id => false do |t|
      t.references :organization, :null => false
      t.references :profile, :null => false
    end

    # Adding the index can massively speed up join tables. Don't use the
    # unique if you allow duplicates.
    add_index(:organizations_profiles, [:organization_id, :profile_id], :unique => true)

    create_table :groups_profiles, :id => false do |t|
      t.references :group, :null => false
      t.references :profile, :null => false
    end
    add_index(:groups_profiles, [:group_id, :profile_id], :unique => true)
  end
end
