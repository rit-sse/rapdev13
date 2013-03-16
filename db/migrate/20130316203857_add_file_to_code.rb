class AddFileToCode < ActiveRecord::Migration
  def change
    add_column :codes, :file, :string
  end
end
