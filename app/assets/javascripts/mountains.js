for ( var i=0; i < mounatins.length; ++i )
{
   L.marker( [mountain[i].lat, mountain[i].lng] )
      .bindPopup( '<a href="' + mountain[i].url + '" target="_blank">' + mountain[i].name + '</a>' )
      .addTo( map );
}
