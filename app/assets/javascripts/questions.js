$(function() {
  return $('#questions').imagesLoaded(function() {
    return $('#questions').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  });
});
