require 'spec_helper'

describe Api::V1::TracksController do

  describe '#index' do
    it 'should return a list of tracks' do
      track = FactoryGirl.create(:track)
      collection = FactoryGirl.create(:collection, :wtracks => [track])

      get :index, collection_id: collection.id

      response.response_code.should == 200
      response.body.should == track.to_json
    end
  end

  describe '#show' do
    it 'should show requested track'

  end

end
