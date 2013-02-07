class Track < ActiveRecord::Base
  attr_accessible :artist, :name
  belongs_to :collection
end
