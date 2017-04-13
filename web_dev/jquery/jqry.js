$(document).ready(function() {
    $('#ttp').on("mouseenter", function(){
      $(this).addClass("focus");
    });
    $('#ttp').on("mouseleave", function(){
      $(this).removeClass("focus");
    });
    $('.list').on("click", function(){
      var answer = prompt("Add a reason to trust the process.");
      $(this).append("<li>" +answer+ "</li>");
    });
     $("#trust_button").on("click", function(){
      $(this).replaceWith( "<audio id='Yes' controls> <source src='Yes.mp3' type='audio/mp3'></audio>" );
    });
});
