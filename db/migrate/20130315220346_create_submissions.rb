class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.references :project
      t.integer :rating

      t.timestamps
    end
    add_index :submissions, :project_id

  end
end
