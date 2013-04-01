require 'spec_helper'

describe Collection do
  it { should have_and_belong_to_many(:tracks) }
  it { should validate_presence_of(:name)}

end