class AudioController < ApplicationController

    def index
        render json: {hello: :world}
    end

end