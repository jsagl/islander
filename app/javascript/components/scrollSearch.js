function scrollSearch() {
  const button = document.querySelector(".button");
  if (button) {
    button.addEventListener("submit", (e) => {
      e.preventDefault();
      document.getElementById('results').scrollIntoView({behavior: "smooth"});
    });
  }
}

export { scrollSearch };
