import {TweenMax, Power3, Power4} from "gsap";

function animateCategories() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
  // document.querySelectorAll('category-choice').style.opacity = 0;
  TweenMax.staggerFrom('.category-choice', 0.3, {opacity:0, x:400, ease: Power3.easeInOut, delay: 0.2}, 0.25);
  TweenMax.from('.btn', 0.450, { opacity:0, width:0, ease: Power3.easeInOut, delay: 1.6});
  TweenMax.from('#home-title', 0.650, {y: 100, opacity: 0, ease: Power3.easeInOut});
  TweenMax.from('#home-underline', 0.650, {width: 0, opacity: 0, ease: Power3.easeInOut, delay: 0.4});
  TweenMax.from('.text-onboarding', 0.8, {y: 100, opacity: 0, ease: Power4.easeInOut, delay: 0.7}); 
  TweenMax.from('.svg-home', 0.8, {scale:3, opacity: 0, ease: Power4.easeInOut, delay: 0.6}); 
}

function animateTheme() {
  // element = document.querySelectorAll('.category-choice');
  // element.style.x = 600;
  // document.querySelectorAll('.category-choice').style.opacity = 0;
  TweenMax.staggerFrom('.theme-choice', 0.4, {opacity:0, x:500, ease: Power3.easeInOut, delay: 0.5}, 0.15);
}

function animateTitle() {

  // TweenMax.from('.search-title', 0.2, {opacity:0, y:-50, ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))});
}

function animateLine() {

  // TweenMax.from('.underline', 0.2, {opacity:0, width:0, delay: 0.2, ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))});
  // TweenMax.From('.underline', 0.3, opacity:0, width:0, delay: 0.3}, 0.25,);
}

export { animateCategories, animateTitle, animateLine, animateTheme }; 