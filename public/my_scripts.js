$(document).ready(function() {

    $('p.howl-link').click(function() {
        var elm = $(this).eq(0);
        var howlId = this.getAttribute("value");
        var postData = {howl_id: howlId};
        $.ajax({url: "/howls/like", method: "post", data: postData, success: function(result){
          elm.html("Likes (" + result + ")")
          }
        });
    });

    $('input.clickable').click(function(){
      if($('div.howl-hidden-form').is(":hidden")){
        $('div.howl-hidden-form').slideDown("medium");
      }
    });

    $(document).click(function(){
      $('div.howl-hidden-form').slideUp("medium");
    });

    $('div.howl-hidden-form').click(function(e){
      e.stopPropagation();
    });

    $('.clickable').click(function(e){
      e.stopPropagation();
    });
});
