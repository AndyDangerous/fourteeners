class LocationsController < ApplicationController
    # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end

  # # GET /locations/1
  # # GET /locations/1.json
  # def show
  #   @location = Location.find(params[:id])
  #
  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @location }
  #   end
  # end

  def show
    location = Location.find(params[:id])

    factory = RGeo::GeoJSON::EntityFactory.instance
    feature = factory.feature(location.latlon)

    respond_to do |format|
      format.html { render action: 'show' }
      format.geojson { render json: (RGeo::GeoJSON.encode(feature)) }
    end
  end

end