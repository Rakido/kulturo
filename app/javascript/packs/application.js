import "bootstrap";
import Flickity from 'flickity';
import 'flickity/dist/flickity.min.css';


document.addEventListener('DOMContentLoaded', (event) => {
  console.log("DOM is loaded and we are ready to Flickity!");
  var elem = document.querySelector('.main-carousel');
  var flkty = new Flickity( elem, {
    // options
    contain: true
  });
})
