$(document).ready(function(){

  $('#search_id').change(function(){
    if (this.value == 1) {
      $('#search_form').attr('action', '/countries/search');
    } else if (this.value == 2) {
      $('#search_form').attr('action', '/cities/search');
    } else if (this.value == 3) {
      $('#search_form').attr('action', '/attractions/search');
    };
  });  // .change()
});
