//= require jquery
//= require jquery-ui
//= require jquery.inlineedit

$(document).ready(function() {
  $('[data-editable]').inlineEdit({
    save: function(e, data) {
      console.log(data.value);
    }
  });
});

