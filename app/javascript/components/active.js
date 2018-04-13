function activateUserChoice() {
  $('.category-choice').on('click', function (e) {
    $(this).toggleClass("active");
});
}

export { activateUserChoice }; 

