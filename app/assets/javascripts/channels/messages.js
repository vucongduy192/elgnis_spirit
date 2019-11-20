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
                if(data.image_link) {
                    return "<div class='message'><figure class='avatar'><img scr='"+ data.image_link +"'></figure><p style='color: #F05408;'>"+ data.user +" :<span style='color: white'>"+ data.message +"</span></p>";
                } else {
                    return "<div class='message'><figure class='avatar'><img scr='"+ data.image_file +"'></figure><p style='color: #F05408;'>"+ data.user +" :<span style='color: white'>"+ data.message +"</span></p>";
                }
            },
        });
    return App.messages;
}
