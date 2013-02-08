desc "Grab Front Page of Pitchfork Top Tracks"
task :import_pitchfork_top => :environment do 
	require 'mechanize'
	browser = Mechanize.new
	page = browser.get('http://pitchfork.com/reviews/best/tracks/')
	collection = Collection.find_by_name('Pitchfork Top Tracks')
	if collection.nil?
		collection = Collection.create!(:name => 'Pitchfork Top Tracks')
	end

	page.search(".object-list").each do |el|
		el.search('.info h1 a').each do |link|
			artistName = link.search(".artist").text().gsub(/[:]/, "")
			songName = link.search(".title").text().gsub(/["]/, "")
			track = Track.find_by_name(songName)
			if track.nil?
				collection.tracks.create(:artist => artistName, :name => songName)
			end
		end
	end

end