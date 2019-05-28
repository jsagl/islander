import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css';
import { initMapbox } from '../plugins/map';
import { addMarkerToMap } from '../plugins/map';
import { initSelect2 } from '../plugins/init_select2';
import { tabManager } from '../component/tab';

const map = document.getElementById("map");
const select = document.querySelector(".select2")

if (map) {
  initMapbox();
};

if (select) {
  initSelect2();
}

tabManager();
