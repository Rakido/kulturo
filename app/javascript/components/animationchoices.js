import {TweenMax, Power3} from "gsap";

function animateCategories() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
 TweenMax.staggerFrom('.category-choice', 0.3, {opacity:0, x:400, delay:0,  ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))}, 0.15,);
}

export { animateCategories }; 