$(document).on('turbolinks:load', function(){
  $(".Rep__create").on("click", function(e){
    var url = $(this).attr('data-url');
    $(this).text('送信中');
    $.ajax({
      url: url,
      type: "POST",
      success: function(data) {
        location.reload();
      },
    })
  });
});
