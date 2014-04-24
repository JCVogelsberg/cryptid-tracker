var map;

var image = {
  url: 'yeti.png',
  // This marker is 20 pixels wide by 32 pixels tall.
  size: new google.maps.Size(50, 50),
  // The origin for this image is 0,0.
  origin: new google.maps.Point(0,0),
  // The anchor for this image is the base of the flagpole at 0,32.
  anchor: new google.maps.Point(0, 32)
};

function addMarker(map, lat, lng) {
  new google.maps.Marker({
    map: map,
    draggable: false,
    position: new google.maps.LatLng(lat, lng)
    // icon: image  this is where you put the icon image.
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
