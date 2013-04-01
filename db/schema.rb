# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130323221558) do

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "collections_tracks", :id => false, :force => true do |t|
    t.integer "collection_id"
    t.integer "track_id"
  end

  add_index "collections_tracks", ["collection_id", "track_id"], :name => "index_collections_tracks_on_collection_id_and_track_id"
  add_index "collections_tracks", ["track_id", "collection_id"], :name => "index_collections_tracks_on_track_id_and_collection_id"

  create_table "tracks", :force => true do |t|
    t.string   "artist"
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "collection_id"
  end

end
