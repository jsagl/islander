const myIslands = document.querySelector('#chart-view')
const myBookings = document.querySelector('#table-view')
const islandTabBtn = document.querySelector('#island-tab-btn')
const bookingTabBtn = document.querySelector('#booking-tab-btn')

const tabManager = () => {
  if (islandTabBtn) {
    islandTabBtn.addEventListener('click', e => {
      myIslands.classList.add('active')
      myBookings.classList.remove('active')
    })

    bookingTabBtn.addEventListener('click', e => {
      myBookings.classList.add('active')
      myIslands.classList.remove('active')
    })
  }
}

export { tabManager }

