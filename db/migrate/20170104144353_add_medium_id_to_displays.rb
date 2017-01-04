class AddMediumIdToDisplays < ActiveRecord::Migration[5.0]
  def change
    add_column :displays, :medium_id, :integer
  end
end
