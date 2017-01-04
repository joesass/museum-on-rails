class AddArtistIdAndMediumIdToArtistMedia < ActiveRecord::Migration[5.0]
  def change
    add_column :artist_media, :artist_id, :integer
    add_column :artist_media, :medium_id, :integer
  end
end
