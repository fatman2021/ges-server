FactoryGirl.define do
  factory :collection do |f|
    name 'MyCollection'
    f.tracks {|a| [a.association(:track)]}
  end
end