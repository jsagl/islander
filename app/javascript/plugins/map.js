const long = document.getElementById("long").innerText;
const lat = document.getElementById("lat").innerText;
mapboxgl.accessToken = 'pk.eyJ1IjoibmFyZnN0YWNrc3RhIiwiYSI6ImNqdm5rY2xiNzB2a2E0OWxlYzM2dDNhbHkifQ.xeRMYy1MxfsDRQcddyCNSQ';
const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [long, lat],
  zoom: 4
});
new mapboxgl.Marker()
  .setLngLat([ long, lat ])
  .addTo(map);



