# wdiDC_Project3

A project noting where lemurs are being illegally held as pets in Madagascar.  Users will be able to query a database for species of lemur, region (1st subnational administrative (aka "admin 1") unit in Madagascar - similar to our states in the US [Country>State]) of sighting, and year reported.  

An interactive map will display, by state, where the captive lemur was reported, the total number of incidents for the given search criteria, as well as thumbnails for any images or video available (with links).

Site is available at https://obscure-garden-9148.herokuapp.com/.  Note that the CSS styling sheets are http only, and a workaround to access them via Heroku (which only accepts)


##User Stories:

As a user:
* As a user I want to be able to query a database on species of madagascar
* I want to be able to query a database by district in Madagascar
* I want to be able to query a database by year (for the past 15 years)
* I want to be able to see a list of records that meet the search criteria
* I want to be able to see a map.
* I want to be able to interact with the map by panning and zooming 
* I want to be able to see the regions in Madagascar, and be shown their name.  
* I want the map to dynamically display which counties meet the search criteria
* I want search results to display thumbnails of images or video if available for individual records
* I want a pop up box to display the search results (including species, district, year, and if video or image is present) for an individual record if I select it

##API
Uses the Leafletjs library, currently accessing the OpenStreetMap API, available at http://wiki.openstreetmap.org/wiki/API_v0.6.  

Future versions will likely use the Mapbox API.
<script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.9/mapbox.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.9/mapbox.css' rel='stylesheet' />


##Instructions
* when installing, run "rake db:create db:migrate seed:lemur_seed".  The seed:lemur_seed is a rake command created to pull seed data from the 'db/seed_lemurs.csv' file.
