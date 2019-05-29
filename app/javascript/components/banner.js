import Typed from 'typed.js';

const typed = document.querySelector("#banner-typed-text")

const loadDynamicBannerText = () => {
  if (typed) {
    new Typed('#banner-typed-text', {
      strings: ["Bora Bora.", "Porquerolles.", "Bali.", "the island of your dreams."],
      typeSpeed: 80,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
