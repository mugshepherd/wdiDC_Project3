# wdiDC_Project3

A project noting where lemurs are being illegally held as pets in Madagascar.  Users will be able to query a database for species of lemur, district (2nd subnational unit in Madagascar - similar to our counties in the US [Country>State>County]) and year reported.  An interactive map will display, by county, where the captive lemur was reported, the total number of incidents for the given search criteria, as well as thumbnails for any images or video available (with links).


##User Stories:

As a user:
* I want to be able to see a map.
* I want to be able to interact with the map by panning and zooming 
* As a user I want to be able to query a database on species of madagascar
* I want to be able to query a database by district in Madagascar
* I want to be able to query a database by year (for the past 15 years)
* I want to be able to see a list of records that meet the search criteria
* I want the map to dynamically display which counties meet the search criteria
* I want search results to display thumbnails of images or video if available for individual records
* I want a pop up box to display the search results (including species, district, year, and if video or image is present) for an individual record if I select it

##API
I am planning on creating an API to interact with data collected by my fiancee via primary research conducted in Madascar.
I am also planning on using the Mapbox.js api for the map.  

<script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.9/mapbox.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.9/mapbox.css' rel='stylesheet' />


##Milestones for Week
1. Monday:  ERDs fully laid out.  Basic functionality for Mapbox API in place.  API set up for data to be queried.  
2. Tuesday:  Photos uploaded.  Search functionality in place.  
3. Wednesday:  Popup in place for individual records when clicked. 
4. Thursday:  final touches on website.  
5. Friday:  Presentation of site