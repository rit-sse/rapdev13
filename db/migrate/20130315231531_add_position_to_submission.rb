class AddPositionToSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :position, :integer
  end
end
