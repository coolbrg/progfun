$(function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion"
    ];
    // $('#comments').on('keypress', function(e){
    //   if(e.keyCode === 64) {
    //     $( "#languages" ).removeClass('hide');
        $( "#comments" ).autocomplete({
          source: availableTags
        });
    //   }
    // });
});