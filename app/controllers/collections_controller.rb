class CollectionsController < ApplicationController
  respond_to :json

  def index
  	respond_with Collection.all
  end
  def show
  	respond_with Collection.find(params[:id]).tracks
  end
end