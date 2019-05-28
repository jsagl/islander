const islandsGlobal = document.querySelector('#global-view')
const myIslands = document.querySelector('#chart-view')
const myBookings = document.querySelector('#table-view')
const globIslandTabBtn = document.querySelector('#global-tab-btn')
const islandTabBtn = document.querySelector('#island-tab-btn')
const bookingTabBtn = document.querySelector('#booking-tab-btn')

const tabManager = () => {
  // if (globIslandTabBtn) {
  //   globIslandTabBtn.addEventListener('click', e => {
  //     islandsGlobal.classList.add('active')
  //     myIslands.classList.remove('active')
  //     myBookings.classList.remove('active')
  //   })

  //   islandTabBtn.addEventListener('click', e => {
  //     islandsGlobal.classList.remove('active')
  //     myIslands.classList.add('active')
  //     myBookings.classList.remove('active')
  //   })

  //   bookingTabBtn.addEventListener('click', e => {
  //     islandsGlobal.classList.remove('active')
  //     myIslands.classList.remove('active')
  //     myBookings.classList.add('active')
  //   })
  // }
}

export { tabManager }

