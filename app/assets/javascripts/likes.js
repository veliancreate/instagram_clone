$(document).ready(function() {

  $('.likes-link').on('click', function(event){
    event.preventDefault();

    var section = $(this).closest("section");
    var likeCount = $(section).find('.likes_count');
    console.log(likeCount);
    function pluralize_like(number){
      if(number > 1){ return 'likes' }
      return 'like'
    }

    $.post(this.href, function(response){
      likeCount.text(response.new_like_count + " " + pluralize_like(response.new_like_count));
      $('.likes_message').text(response.like_message)
    });
  });
});  