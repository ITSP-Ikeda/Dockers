class ParkingAreasController < ApplicationController
  before_action :set_parking_area, only: %i[ show edit update destroy ]

  # GET /parking_areas or /parking_areas.json
  def index
    @parking_areas = ParkingArea.all
  end

  # GET /parking_areas/1 or /parking_areas/1.json
  def show
  end

  # GET /parking_areas/new
  def new
    @parking_area = ParkingArea.new
  end

  # GET /parking_areas/1/edit
  def edit
  end

  # POST /parking_areas or /parking_areas.json
  def create
    @parking_area = ParkingArea.new(parking_area_params)

    respond_to do |format|
      if @parking_area.save
        format.html { redirect_to parking_area_url(@parking_area), notice: "Parking area was successfully created." }
        format.json { render :show, status: :created, location: @parking_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_areas/1 or /parking_areas/1.json
  def update
    respond_to do |format|
      if @parking_area.update(parking_area_params)
        format.html { redirect_to parking_area_url(@parking_area), notice: "Parking area was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_areas/1 or /parking_areas/1.json
  def destroy
    @parking_area.destroy!

    respond_to do |format|
      format.html { redirect_to parking_areas_url, notice: "Parking area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_area
      @parking_area = ParkingArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_area_params
      params.require(:parking_area).permit(:parking_area_name, :parking_id)
    end
end
