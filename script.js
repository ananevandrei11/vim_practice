//CAROUSEL
function carousel(btn, elem, progress, next, move, count) {
  let carouselBtn = document.querySelector(btn);
  let carousel = document.querySelector(elem);
  let carouselProgress = document.querySelector(progress);
  carouselBtn.onclick = function () {
    carousel.style.marginLeft = `-${move * count}rem`;
    if (count > 0) {
      carouselProgress.children[count - 1].classList.remove(next);
      carouselProgress.children[count].classList.add(next);
    } else {
      carouselProgress.children[
        carouselProgress.children.length - 1
      ].classList.remove(next);
      carouselProgress.children[count].classList.add(next);
    }
    count++;
    if (count >= carousel.children.length) {
      count = 0;
    }
  };
}
carousel("#carouselBtn", "#carousel", ".carousel__progress", "next", 47.3, 1);

// GALLERY
function popuOpen(btn1, btn2, elem) {
  let btnOpen = document.querySelector(`${btn1}`);
  let popup = document.querySelector(`${elem}`);
  let btnClose = popup.querySelector(`${btn2}`);
  btnOpen.onclick = function () {
    popup.classList.add('popup-open');
  };
  btnClose.onclick = function () {
    popup.classList.remove('popup-open');
  };
}
popuOpen('.potted__btn', '.popup__btn-close', '#popup-1');
popuOpen('.vp__btn', '.popup__btn-close', '#popup-1');
