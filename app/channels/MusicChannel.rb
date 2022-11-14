class MusicChannel < ApplicationCable::Channel

    def subscribed
        stream_from 'music_channel'
        ActionCable.server.broadcast('music_channel', {hello: "Hello"})
    end

    def send_text(data)
        ActionCable.server.broadcast('music_channel', 
        content: 'abcd',
        username: 'abcd',
        color: 'abcd'
        )
    end

end