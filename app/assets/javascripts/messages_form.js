
function messageForm(){
  var shiftDown = false;
  var chatForm = $("#new_message");
  var messageBox = chatForm.children("textarea");
  $(document).keypress(function (e) {
      console.log(e.keyCode, shiftDown);
      if(e.keyCode == 13) {
          if(messageBox.is(":focus")) {
            e.preventDefault(); // prevent another \n from being entered
            chatForm.submit();
            $(chatForm).trigger('reset');
            $("#message_content").val("")
            $('.msg_history').stop ().animate ({
                scrollTop: $('.msg_history')[0].scrollHeight
            });
          }
      }
  });
$(document).keydown(function (e) {
      if(e.keyCode == 16) shiftDown = true;
  });
$(document).keyup(function (e) {
      if(e.keyCode == 16) shiftDown = false;
  });
}



