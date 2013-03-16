class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :ace_syntax
      t.string :pygments_syntax

      t.timestamps
    end
  end
end
