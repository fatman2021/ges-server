class TracksController < ApplicationController
  respond_to :json
  def show
  	respond_with Collection.find_by_name(params[:id]).tracks.find(params[:trackid])
  end
end