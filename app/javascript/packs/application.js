import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css';
import "flatpickr/dist/themes/light.css"
import { initMapbox } from '../plugins/map';
import { findWeather } from '../plugins/map';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initSelect2 } from '../plugins/init_select2';
import { flatpickr } from "../plugins/flatpickr";

const map = document.getElementById("map");
const select = document.querySelector(".select2")
const  dateSelector = document.querySelector(".date-picker");

if (map) {
  initMapbox();
  findWeather();
};

if (select) {
  initSelect2();
}

if (dateSelector) {
  flatpickr();
}

initUpdateNavbarOnScroll();
