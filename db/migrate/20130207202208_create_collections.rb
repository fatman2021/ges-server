class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name

      t.timestamps
    end

    add_column :tracks, :collection_id, :integer
  end
end
