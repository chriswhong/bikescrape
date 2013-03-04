bikescrape
==========

Ruby script to pull the ~450 stations on NYC's draft Citibike station map for use in creating a shapefile.  Created for the purpose of adding the bikeshare station locations to an Urban Planning GIS Project

1) Save result of http://a841-tfpweb.nyc.gov/bikeshare/get_tentative_bikeshare_points as a .json file

2) Run getstations.rb using result file from 1 as an argument, outputs csv with station id, lat, and lon

3) Run getdetails.rb using result of 2 as an argument, outputs csv with id,lat,lon,user_profile_url, and reason (the last two correspond to the racks's location and description

4) Clean up result of 3 in excel, import to GIS and geocode lat/lon

Results of this process on 3/3/2013 included in this repo as shapefile and kml

