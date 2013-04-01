class Track < ActiveRecord::Base
  attr_accessible :artist, :name
  has_and_belongs_to_many :collections

  validates_presence_of :artist, :name
end
