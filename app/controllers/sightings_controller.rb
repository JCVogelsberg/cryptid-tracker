class SightingsController < ApplicationController


  def new
    @sighting = Sighting.new
  end

  def create
    @sighting = Sighting.new(sighting_params)
    if @sighting.save
       redirect_to root_url, notice: "Thank you for reporting your sighting"
    else
      redirect_to :back
    end
  end

  def index
    @sightings = Sighting.all

  end

  def show
    @sighting = Sighting.find(params[:id])
  end

 def edit
    @sighting = Sighting.find(params[:id])
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:latitude => params[:latitude],
                        :longitude => params[:longitude],
                        :name => params[:name])
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private
    def sighting_params
      params.require(:sighting).permit(:name, :user_id, :description, :latitude, :longitude)
  end
end
