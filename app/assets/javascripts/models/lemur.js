// this page still under development

// var Lemur = function(id, species, region, year){
//   this.id = id;
//   this.species = species;
//   this.region = region;
//   this.year = year;
// }

// Lemur.prototype = {
//   get: function: (){
//    $.ajax({
//       url: 'http://localhost:3000'
//       data: {
//        format: 'json'
//       },
//       error: function() {
//        $('#info').html('<p>An error has occurred</p>');
//       },
//       dataType: 'jsonp',
//       success: function(data) {
//        var $species = $('<h1>').text(data.lemur[0].species);
//        var $year = $('<p>').text(data.lemur[0].year);
//        $('#info')
//         .append($species)
//         .append($year);
//     },
//     type: 'GET'
//    });
//   };
// }

// Card.prototype = {
//   save: function(){
//     $.ajax({
//       type: 'POST',
//       data: { lemur: {species: this.species, region: this.region, year = this.year}},
//       dataType: 'json',
//       url: "http://localhost:3000/lemurs"
//     }).done(function(response){
//       console.log("model saved")
//       trilloModel.fetchCards();
//     }).fail(function(){
//       console.log("failed to save")
//     })
//   },
//   update: function(data){
//     $.ajax({
//       type: 'PUT',
//       data: {card: data},
//       dataType: 'json',
//       url: "http://localhost:3000/cards/" + this.id
//     }).done(function(response){
//       trilloModel.fetchCards();
//       console.log("model updated")
//     }).fail(function(){
//       console.log("failed to updated")
//     })
//   }
// }
