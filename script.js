//CAROUSEL
function carousel(btn, elem, progress, next, move, count) {
	let carouselBtn = document.querySelector(btn);
	let carousel = document.querySelector(elem);
	let carouselProgress = document.querySelector(progress);
	carouselBtn.onclick = function() {
		carousel.style.marginLeft = `-${move*count}rem`;
		if (count > 0) {
			carouselProgress.children[count-1].classList.remove(next);
			carouselProgress.children[count].classList.add(next);
		} else {
			carouselProgress.children[carouselProgress.children.length-1].classList.remove(next);
			carouselProgress.children[count].classList.add(next);
		}
		count++;
		if (count >= carousel.children.length) {
			count = 0;
		}
	};
}
carousel('#carouselBtn', '#carousel', '.carousel__progress', 'next', 47.3, 1);



