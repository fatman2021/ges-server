desc "Grab CD101 top songs"
task :import_top => :environment do 
	require 'mechanize'
	browser = Mechanize.new
	page = browser.get('http://cd1025.com/about/playlists/top-102')
	collection = Collection.create!(:name => 'cd102top')
	page.search("tbody tr").each do |el|
		artistName = el.search('.style5').text()
		songName = el.search('.style6').text()
		collection.tracks.create!(:artist => artistName, :name => songName)
	end

end

desc "Grab CD101 current playlist"
task :import_cd101_playlist => :environment do 
	require 'mechanize'
	browser = Mechanize.new
	page = browser.get('http://cd1025.com/about/playlists/current-playlist')
	collection = Collection.create!(:name => 'cd102playlist')
	page.search("#content-main").each do |content|
		content.search('a').each do |link|
			puts link
		end
	end

end
