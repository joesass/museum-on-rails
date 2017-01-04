class AddArtistIdToDisplays < ActiveRecord::Migration[5.0]
  def change
    add_column :displays, :artist_id, :integer
  end
end
