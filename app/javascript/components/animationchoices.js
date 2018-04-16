import {TweenMax, Power3} from "gsap";

function animateCategories() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
  // document.querySelectorAll('.category-choice').style.opacity = 0;
  TweenMax.staggerFrom('.category-choice', 0.3, {opacity:0, x:600, delay: 0.3}, 0.25,);
}

function animateTitle() {

  // TweenMax.From('.search-title', 0.3, opacity:0, y:200, delay: 0.3}, 0.25,);
}

function animateLine() {

  // TweenMax.From('.underline', 0.3, opacity:0, width:0, delay: 0.3}, 0.25,);
}

export { animateCategories }; 