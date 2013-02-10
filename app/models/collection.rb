class Collection < ActiveRecord::Base
  attr_accessible :name
  has_many :tracks, :dependent => :destroy
  def to_param
  	name
  end
end
