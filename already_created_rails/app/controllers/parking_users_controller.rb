class ParkingUsersController < ApplicationController
  before_action :set_parking_user, only: %i[ show edit update destroy ]

  # GET /parking_users or /parking_users.json
  def index
    @parking_users = ParkingUser.all
  end

  # GET /parking_users/1 or /parking_users/1.json
  def show
  end

  # GET /parking_users/new
  def new
    @parking_user = ParkingUser.new
  end

  # GET /parking_users/1/edit
  def edit
  end

  # POST /parking_users or /parking_users.json
  def create
    @parking_user = ParkingUser.new(parking_user_params)

    respond_to do |format|
      if @parking_user.save
        format.html { redirect_to parking_user_url(@parking_user), notice: "Parking user was successfully created." }
        format.json { render :show, status: :created, location: @parking_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_users/1 or /parking_users/1.json
  def update
    respond_to do |format|
      if @parking_user.update(parking_user_params)
        format.html { redirect_to parking_user_url(@parking_user), notice: "Parking user was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_users/1 or /parking_users/1.json
  def destroy
    @parking_user.destroy!

    respond_to do |format|
      format.html { redirect_to parking_users_url, notice: "Parking user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_user
      @parking_user = ParkingUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_user_params
      params.require(:parking_user).permit(:parking_user_name, :remark)
    end
end
