$(document).ready(function(){
  var make_fixed = function(name, number){
      var header = $("#" + name);
      $(window).scroll(function() {    
        var scroll = $(window).scrollTop();
            if (scroll >= number) {
              header.addClass("fixed");
            } else {
              header.removeClass("fixed");
            }
      });    
  };
  
  make_fixed("fixed-menu", 63);
  make_fixed("fixed-stats", 63);
  make_fixed("adjust-for-menu", 63);
});