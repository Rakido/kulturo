import {TweenMax, Power3} from "gsap";

function animateCategories() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
 TweenMax.staggerFrom('.category-choice', 0.3, {opacity:0, x:300, delay:0,  ease:new Ease(Power3(0.45, 0.2, 0.0, 1.0))}, 0.25,);
}

export { animateCategories }; 