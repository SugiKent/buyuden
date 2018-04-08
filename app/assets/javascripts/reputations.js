$(function(){
  $(".Rep__create").on("click", function(e){
    var url = $(this).attr('data-url');
    $.ajax({
      url: url,
      type: "POST",
    })
  });
});
