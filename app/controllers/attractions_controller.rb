# frozen_string_literal: true
class AttractionsController < ProtectedController
  before_action :set_attraction, only: [:show, :update, :destroy]

  # GET /attractions
  def index
    @attractions = current_user.attractions.all

    render json: @attractions
  end

  # GET /attractions/1
  def show
    render json: @attraction
  end

  # POST /attractions
  def create
    @attraction = current_user.attractions.new(attraction_params)

    if @attraction.save
      render json: @attraction, status: :created
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attractions/1
  def update
    if @attraction.update(attraction_params)
      render json: @attraction
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attractions/1
  def destroy
    @attraction.destroy
  end

  def search
    @client = GooglePlaces::Client.new(ENV['API_KEY'])
    @attractions=@client.spots_by_query(search_params[:input])
    if @attractions
      render json: @attractions
    else
      render json: @attraction.errors, status: :unprocessable_entity
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_attraction
    @attraction = current_user.attractions.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def attraction_params
    params.require(:attraction).permit(:name, :address, :time_spend, :notes, :trip_id)
  end

  def search_params
    params.require(:location).permit(:input)
  end
  private :set_attraction, :attraction_params, :search_params
end
