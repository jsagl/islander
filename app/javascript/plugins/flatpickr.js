const flatpickr = require("flatpickr");

flatpickr(".start-date", {
  minDate: "today",
  defaultDate: "today"
})

flatpickr(".end-date", {
  minDate: new Date().fp_incr(1),
  defaultDate: new Date().fp_incr(1),
})

export { flatpickr };
