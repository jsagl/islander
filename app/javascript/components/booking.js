const startDate = document.querySelector(".start-date");
const endDate = document.querySelector(".end-date");
const stayDuration = document.querySelector("#stay-duration");
const totalPrice = document.querySelector("#total-price");



const bookingInfo = () => {
  startDate.addEventListener("change", (event) => {
    let startD = new Date(startDate.value);
    let endD = new Date(endDate.value);
    const diffTime = Math.abs(endD.getTime() - startD.getTime());
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    if (isNaN(diffDays) === false) {
      stayDuration.innerText = `Stay duration: ${pluralize(diffDays)} - `;
      totalPrice.innerText = `Total price: ${totalPrice.dataset.pricePerDay * diffDays}€`;
    }
  })
  endDate.addEventListener("change", (event) => {
    let startD = new Date(startDate.value);
    let endD = new Date(endDate.value);
    const diffTime = Math.abs(endD.getTime() - startD.getTime());
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    if (isNaN(diffDays) === false) {
      stayDuration.innerText = `Stay duration: ${pluralize(diffDays)} - `;
      totalPrice.innerText = `Total price: ${totalPrice.dataset.pricePerDay * diffDays}€`;
    }
  })
}

const pluralize = (value) => {
  if (value === 1 ) {
    return `${value} day`;
  } else {
    return `${value} days`
  }
}



export { bookingInfo };

// date.addEventListener("change", (event) => {
//   totalPrice.innerText =
// })
