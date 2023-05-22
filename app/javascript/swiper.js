const swiper = new Swiper('.swiper', {
    // Optional parameters
    // speed: 400,
    // spaceBetween: 100,

    direction: 'horizontal',
    loop: true,
    enabled: true,
    slidesPerView: 3,
    slidesPerGroup: 3,
    spaceBetween: 10,
  
    // If we need pagination
    // pagination: {
    //   el: '.swiper-pagination',
    // },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  
    // And if we need scrollbar
    // scrollbar: {
    //   el: '.swiper-scrollbar',
    // },
  });
  