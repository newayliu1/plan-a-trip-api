# frozen_string_literal: true
class TripsController < ProtectedController
  before_action :set_trip, only: [:show, :update, :destroy]

  # GET /trips
  def index
    @trips = current_user.trips.all

    render json: @trips
  end

  # GET /trips/1
  def show
    render json: @trip
  end

  # POST /trips
  def create
    @trip = current_user.trips.new(trip_params)

    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      head :no_content
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_trip
    @trip = current_user.trips.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def trip_params
    params.require(:trip).permit(:name)
  end
  private :set_trip, :trip_params
end
