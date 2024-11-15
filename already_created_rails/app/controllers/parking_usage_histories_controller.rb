class ParkingUsageHistoriesController < ApplicationController
  before_action :set_parking_usage_history, only: %i[ show edit update destroy ]

  # GET /parking_usage_histories or /parking_usage_histories.json
  def index
    @parking_usage_histories = ParkingUsageHistory.all
  end

  # GET /parking_usage_histories/1 or /parking_usage_histories/1.json
  def show
  end

  # GET /parking_usage_histories/new
  def new
    @parking_usage_history = ParkingUsageHistory.new
  end

  # GET /parking_usage_histories/1/edit
  def edit
  end

  # POST /parking_usage_histories or /parking_usage_histories.json
  def create
    @parking_usage_history = ParkingUsageHistory.new(parking_usage_history_params)

    respond_to do |format|
      if @parking_usage_history.save
        format.html { redirect_to parking_usage_history_url(@parking_usage_history), notice: "Parking usage history was successfully created." }
        format.json { render :show, status: :created, location: @parking_usage_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_usage_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_usage_histories/1 or /parking_usage_histories/1.json
  def update
    respond_to do |format|
      if @parking_usage_history.update(parking_usage_history_params)
        format.html { redirect_to parking_usage_history_url(@parking_usage_history), notice: "Parking usage history was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_usage_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_usage_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_usage_histories/1 or /parking_usage_histories/1.json
  def destroy
    @parking_usage_history.destroy!

    respond_to do |format|
      format.html { redirect_to parking_usage_histories_url, notice: "Parking usage history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_usage_history
      @parking_usage_history = ParkingUsageHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_usage_history_params
      params.require(:parking_usage_history).permit(:year, :month, :parking_area_id, :parking_user_id, :amount)
    end
end
