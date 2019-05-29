import flatpickr from 'flatpickr';
import "flatpickr/dist/flatpickr.min.css";
import $ from "jquery";

const initFlatpickr = () => {
  let startpicker = flatpickr('.start-date', {
    minDate: "today",
    maxDate: $('.end-date').attr('value'),
    onClose: function(selectedDates, dateStr, instance) {
      endpicker.set('minDate', dateStr);
    },
  });

  let endpicker = flatpickr('.end-date', {
    minDate: $('.start-date').attr('value'),
    onClose: function(selectedDates, dateStr, instance) {
      startpicker.set('maxDate', dateStr);
    },
  });
};

export { initFlatpickr };
