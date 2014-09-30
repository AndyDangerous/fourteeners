$ = jQuery

$ ->
  map = L.map('map').setView([39, -106], 7)

  L.tileLayer( 'http://{s}.mqcdn.com/tiles/1.0.0/map/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="http://osm.org/copyright" title="OpenStreetMap" target="_blank">OpenStreetMap</a> contributors | Tiles Courtesy of <a href="http://www.mapquest.com/" title="MapQuest" target="_blank">MapQuest</a> <img src="http://developer.mapquest.com/content/osm/mq_logo.png" width="16" height="16">',
      subdomains: ['otile1','otile2','otile3','otile4'],
      maxZoom: 18
  }).addTo(map)
  fourteeners = L.geoJson().addTo(map);
  markers = new L.MarkerClusterGroup();
  for location in gon.mountains
    # $location = $(location)
    # lat = $location.geometry.coordinates(1)
    # lon = $location.geometry.coordinates("0")
    # name = $location.data("name")
    # details = $location.data("details")
    # fourteeners.addData(location);
    markers.addLayer(new L.Marker(location));
    # marker = L.marker([lat, lon]).addTo(map)
    # marker.bindPopup("<b>#{name}</b><br>#{details}")
  map.addLayer(markers)

# var markers = new L.MarkerClusterGroup();
# markers.addLayer(new L.Marker(getRandomLatLng(map)));
# ... Add more layers ...
# map.addLayer(markers);
