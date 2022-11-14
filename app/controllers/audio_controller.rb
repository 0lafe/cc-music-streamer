class AudioController < ApplicationController

    def index
        render json: {hello: :world}
    end

    def show
        song = Song.find(params[:id])
        if song
            send_data song.file.download
        else
            render json: {error: "No song with id #{params[:id]} exists"}
        end
    end

end

