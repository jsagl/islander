function scrollSearch() {
  const button = document.querySelector(".button");
  if (button) {
    button.addEventListener("click", (e) => {
      e.preventDefault();
      document.getElementById('results').scrollIntoView();
    });
  }
}

export { scrollSearch };
