function createMessageChannel() {
    App.messages = App.cable.subscriptions.create({
            channel: 'MessagesChannel', chat_id: parseInt($("#message_chat_id").val())
        },
        {
            received: function(data) {
                $("#messages").removeClass('hidden')
                $('#messages').append(this.renderMessage(data));
                $(".scroll").scrollTop($(".scroll")[0].scrollHeight);
            },
            renderMessage: function(data) {
                var user_id = parseInt($('#message_user_id').val());
                var avatar_link = $('#message_avatar').val();
                if(data.id == user_id){
                    return "<div class='outgoing_msg'>"+
                    "        <div class='sent_msg'>"+
                    "            <p>"+data.message+"</p>"+
                    "            <span class='time_date'></span>"+
                    "        </div>"+
                    "    </div>";
                } else {
                    return "<div class='incoming_msg'>"+
                    "       <div class='incoming_msg_img'> "+
                    "           <img style='border-radius: 50%; width: 30px; height: 30px;' src='" + avatar_link + "'>"+
                    "       </div>"+
                    "        <div class='received_msg'>"+
                    "           <div class='received_withd_msg'>"+
                    "               <p>"+data.message+"</p>"+
                    "               <span class='time_date'></span>"+
                    "           </div>"+
                    "        </div>"+
                    "    </div>";
                }
            },
        });
    return App.messages;


}
