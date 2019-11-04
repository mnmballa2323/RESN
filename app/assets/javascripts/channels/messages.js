//app/assets/javascripts/channels/messages.js
function createMessageChannel() {
  App.messages = App.cable.subscriptions.create({
        channel: 'MessagesChannel', chat_id: parseInt($("#message_chat_id").val())
        },
        {
        received: function(data) {
          $("#messages").removeClass('hidden')
          return $('#messages').append(this.renderMessage(data));
        },
        renderMessage: function(data) {
          const id = parseInt($("#myid").text());
          $('.msg_history').stop ().animate ({
            scrollTop: $('.msg_history')[0].scrollHeight
          });
    return id == data.user ? ( 
      `<div class="outgoing_msg">
      <div class="sent_msg">
        <p>  ${ data.message }</p>
        <span class="time_date"></span> 
      </div>
    </div>` 
      ): (
        `<div class="incoming_msg">
        <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
        <div class="received_msg">
          <div class="received_withd_msg">
            <p> ${ data.message }</p>
            <span class="time_date"></span>
          </div>
        </div>
      </div>
        `);
  },
      });
return App.messages;
}
