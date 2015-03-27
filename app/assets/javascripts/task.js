$(function(){
  checkboxListener();
});

function checkboxListener(){
  $('#todo-list').on('click', '.toggle', toggleCheckbox);
}

function toggleCheckbox(){
  $(this).parents("li").toggleClass("completed");
  $(this).parents("form").trigger("submit");
}
