import mapboxgl from 'mapbox-gl';




const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const marker = JSON.parse(mapElement.dataset.marker);
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [marker.lng, marker.lat],
      zoom: 5
    });
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat])
      .addTo(map);
  }
};



const findWeather = () => {
  const apiKey = "&appid=35c51c21daa4e080a47a7d083fcc7399";
  const baseUrl = "https://api.openweathermap.org/data/2.5/weather?";
  const iconBaseUrl = "http://openweathermap.org/img/w/";
  const mapElement = document.getElementById('map');
  const marker = JSON.parse(mapElement.dataset.marker);
  const url = `${baseUrl}lat=${marker.lat}&lon=${marker.lng}&units=metric${apiKey}`;
    fetch(url)
      .then(response => response.json())
      .then((data) => {
        // document.querySelector("#weather-description").innerText = data.weather[0].description;
        const weatherUrl = `${iconBaseUrl}${data.weather[0].icon}.png`;
        document.querySelector("#weather-image").src = weatherUrl;
        document.querySelector("#temperature").innerText = `${Math.round(data.main.temp * 10) / 10} °C`;
      });
};






// const long = document.getElementById("long").innerText;
// const lat = document.getElementById("lat").innerText;
// mapboxgl.accessToken = 'pk.eyJ1IjoibmFyZnN0YWNrc3RhIiwiYSI6ImNqdm5rY2xiNzB2a2E0OWxlYzM2dDNhbHkifQ.xeRMYy1MxfsDRQcddyCNSQ';
// const map = new mapboxgl.Map({
//   container: 'map',
//   style: 'mapbox://styles/mapbox/streets-v11',

// });
// new mapboxgl.Marker()
//   .setLngLat([ long, lat ])
//   .addTo(map);
export { initMapbox };
export { findWeather };
