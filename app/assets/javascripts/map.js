function initializeMap(){
  console.log("initializeMap")

  
  var madaTiles = L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
  	attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors',
    maxZooom: 18  
  });

  $.getJSON($('link[rel="points"]').attr("href"), function(data) {
    var geojson = L.geoJson(data, {
      onEachFeature: function (feature, layer) {
        layer.bindPopup(feature.properties.NAME_2);
      }
    });

	var countryStyle = {
    'color': "#000",
    'weight': 2,
    'opacity': 0.6
  };

  var map = L.map('map').fitBounds(geojson.getBounds()).setView([-18.906, 47.516], 6); 
  	madaTiles.addTo(map);
  	geojson.addTo(map);

  });
}







//   var map = new L.map('map').setView([-18.906, 47.516], 6);

//   L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
//       attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
//   }).addTo(map);

//   var countryStyle = {
//     'color': "#000",
//     'weight': 2,
//     'opacity': 0.6
//   };

//   function popup(feature, layer) {
//     if (feature.properties && feature.properties.name) {
//         layer.bindPopup(feature.properties.name);
//     }
//   }



// }

