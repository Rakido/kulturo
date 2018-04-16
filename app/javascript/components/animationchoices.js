import {TweenMax, Power3} from "gsap";

function animateCategories() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
  // document.querySelectorAll('category-choice').style.opacity = 0;
  TweenMax.staggerFrom('.category-choice', 0.4, {opacity:0, x:500, ease: Power3.easeOut, delay: 0.5}, 0.15);
}

function animateTheme() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
  // document.querySelectorAll('.category-choice').style.opacity = 0;
  TweenMax.staggerFrom('.theme-choice', 0.4, {opacity:0, x:500, ease: Power3.easeOut, delay: 0.5}, 0.15);
}

function animateTitle() {

  // TweenMax.from('.search-title', 0.2, {opacity:0, y:-50, ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))});
}

function animateLine() {

  // TweenMax.from('.underline', 0.2, {opacity:0, width:0, delay: 0.2, ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))});
  // TweenMax.From('.underline', 0.3, opacity:0, width:0, delay: 0.3}, 0.25,);
}

export { animateCategories, animateTitle, animateLine, animateTheme }; 