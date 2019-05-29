import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css';
import "flatpickr/dist/themes/light.css"
import { initMapbox } from '../plugins/map';
import { findWeather } from '../plugins/map';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initSelect2 } from '../plugins/init_select2';
import { tabManager } from '../component/tab';
import { initFlatpickr } from "../plugins/flatpickr";
import { scrollSearch } from '../components/scrollSearch';
import { loadDynamicBannerText } from '../components/banner';
import { bookingInfo } from "../components/booking";

const banner = document.getElementById("home-banner");
const map = document.getElementById("map");
const select = document.querySelector(".select2")
const  startDate = document.querySelector(".start-date");
const  endDate = document.querySelector(".end-date");

if (map) {
  initMapbox();
  findWeather();
};

if (select) {
  initSelect2();
}

tabManager();

if (startDate || endDate) {
  initFlatpickr();
}

if (banner){
  loadDynamicBannerText();
}


if (startDate || endDate) {
  bookingInfo();
}

scrollSearch();

initUpdateNavbarOnScroll();
