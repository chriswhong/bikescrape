require 'rubygems'
require 'yajl'
require 'csv'
require 'open-uri'


idfile = ARGV[0]

c = CSV.open idfile 

c.each do |row|
	uristring = "http://a841-tfpweb.nyc.gov/bikeshare/get_point_info?point=" + row[0]
	content=open(uristring).read
	PARSER = Yajl::Parser.new

	def output_CSV(s)




	station_info = [s['id'],s['lat'],s['lon'],s['user_profile_url'],s['reason']].to_csv
	puts station_info
	File.open('results.txt', 'a') do |file|
	 file.puts station_info
	end
	
end
	
	
	
	PARSER.on_parse_complete = method(:output_CSV)
	PARSER.parse(content)
	
	
end