import flatpickr from 'flatpickr';
import "flatpickr/dist/flatpickr.min.css";
import $ from "jquery";

  // const setMinDate = () => {
  //   const startDate = document.querySelector(".start-date");
  //   let date = new Date()
  //   startDate.addEventListener("change", (event) => {
  //     date = new Date(startDate.value)
  //     console.log(date)
  //   })
  //   return date
  // }

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

  // flatpickr(".start-date", {
  //   minDate: "today",
  //   defaultDate: "today"
  // });


  // flatpickr(".end-date", {
  //   defaultDate: new Date().fp_incr(1),
  //   minDate: new Date(setMinDate()).fp_incr(1)
  // });
};

export { initFlatpickr };
