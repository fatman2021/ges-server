require 'spec_helper'

describe Track do

  it { should have_and_belong_to_many(:collections) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:artist) }

end