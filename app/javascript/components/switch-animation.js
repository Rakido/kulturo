function switchPageAnimationDuration() { 
  const buttonDuration = document.getElementById('button-duration')
  if (buttonDuration) {
    buttonDuration.addEventListener('click', function(e) {
      e.preventDefault();
    
      setTimeout(function() {
        TweenMax.staggerTo('.category-choice', 0.3, {opacity:0, x:-200, delay:0,  ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))}, 0.15,);
     
          setTimeout(function(){
            document.querySelector(".content-duration-form").submit();
          }, 800);
        }, 500);
    }, false);
  }
}

function switchPageAnimationKind() { 
  const buttonKind = document.getElementById('button-kind')
  if (buttonKind) {
    buttonKind.addEventListener('click', function(e) {
      e.preventDefault();
    
      setTimeout(function() {
        TweenMax.staggerTo('.category-choice', 0.3, {opacity:0, x:-200, delay:0,  ease:new Ease(Power3(0.25, 0.1, 0.0, 1.0))}, 0.15,);
          setTimeout(function(){
            document.querySelector(".content-kind-form").submit();
          }, 800);
        }, 500);
    }, false);
  }
}

export { switchPageAnimationDuration, switchPageAnimationKind };