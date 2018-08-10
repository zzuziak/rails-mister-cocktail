import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Mohito?", "Long Island Ice Tea?", "Apple pie?", "Gin&Tonic?", "Margarita?"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
