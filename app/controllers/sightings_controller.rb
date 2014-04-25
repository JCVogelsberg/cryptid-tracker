class SightingsController < ApplicationController

  before_filter :authorize, only: [:edit, :update, :destroy]

  def new
    @sighting = Sighting.new
    @sightings = Sighting.all
  end

  def create
    @sighting = Sighting.new(sighting_params)
    if @sighting.save
       redirect_to :back, notice: "Thank you for reporting your sighting"
    else
      redirect_to :back, alert:  "Something went wrong. Try again."
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
