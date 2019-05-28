import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/map';
import { addMarkerToMap } from '../plugins/map';
import { initUpdateNavbarOnScroll } from '../components/navbar';

initUpdateNavbarOnScroll();

if (map) {
  initMapbox();
  addMarkerToMap();
}

