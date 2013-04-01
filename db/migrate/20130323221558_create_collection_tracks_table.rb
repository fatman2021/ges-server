class CreateCollectionTracksTable < ActiveRecord::Migration
  def self.up
    create_table :collections_tracks, :id => false do |t|
      t.references :collection
      t.references :track
    end
    add_index :collections_tracks, [:collection_id, :track_id]
    add_index :collections_tracks, [:track_id, :collection_id]
  end

  def self.down
    drop_table :collections_tracks
  end
end
