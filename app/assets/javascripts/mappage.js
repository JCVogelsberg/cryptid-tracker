var map;

function addMarker(map, lat, lng) {
  new google.maps.Marker({
    map: map,
    draggable: false,
    position: new google.maps.LatLng(lat, lng)
  });
}

function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(0, 0),
    zoom: 2
  };
  map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
  addMarker(map,0,0);
}



google.maps.event.addDomListener(window, 'load', initialize);
