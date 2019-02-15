const fixedNavbarOnScroll = () => {
  const banner = document.querySelector(".banner");
  const navbar = document.querySelector(".navbar-wagon");
  const bannerSize = banner.offsetHeigth
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= bannerSize) {
        navbar.classList.add('sticky');
      } else {
        navbar.classList.remove('sticky');
      }
    });
  }
};

export { fixedNavbarOnScroll };
