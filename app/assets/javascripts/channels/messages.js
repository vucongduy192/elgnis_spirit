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

                    return "<div class='outgoing_msg'>"+
"        <div class='sent_msg'>"+
"            <p>"+data.message+"</p>"+
"            <span class='time_date'></span>"+
"        </div>"+
"    </div>";
            },
        });
    return App.messages;
}
