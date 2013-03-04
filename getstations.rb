require 'rubygems'
require 'yajl'
require 'csv'

stationfile = ARGV[0]

PARSER = Yajl::Parser.new

def output_CSV(s)

s.each do |t|
station_info = [t['id'],t['lat'],t['lon']].to_csv
File.open('test.txt', 'a') do |file|
 file.puts station_info
end
end

end

PARSER.on_parse_complete = method(:output_CSV)
PARSER.parse(File.read(stationfile))