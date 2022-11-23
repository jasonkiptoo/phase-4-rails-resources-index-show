class BirdsController < ApplicationController

  def index
    birds = Bird.all
    render json: birds
  end
# get birds with specific id
    def show
      bird= Bird.find_by(id: params[:id])

       if bird
        render json: bird

       else
        render json: {error: "Not found"}

       end


    end
end
