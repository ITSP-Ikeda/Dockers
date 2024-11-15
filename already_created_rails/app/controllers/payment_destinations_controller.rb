class PaymentDestinationsController < ApplicationController
  before_action :set_payment_destination, only: %i[ show edit update destroy ]

  # GET /payment_destinations or /payment_destinations.json
  def index
    @payment_destinations = PaymentDestination.all
  end

  # GET /payment_destinations/1 or /payment_destinations/1.json
  def show
  end

  # GET /payment_destinations/new
  def new
    @payment_destination = PaymentDestination.new
  end

  # GET /payment_destinations/1/edit
  def edit
  end

  # POST /payment_destinations or /payment_destinations.json
  def create
    @payment_destination = PaymentDestination.new(payment_destination_params)

    respond_to do |format|
      if @payment_destination.save
        format.html { redirect_to payment_destination_url(@payment_destination), notice: "Payment destination was successfully created." }
        format.json { render :show, status: :created, location: @payment_destination }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_destinations/1 or /payment_destinations/1.json
  def update
    respond_to do |format|
      if @payment_destination.update(payment_destination_params)
        format.html { redirect_to payment_destination_url(@payment_destination), notice: "Payment destination was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_destination }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_destinations/1 or /payment_destinations/1.json
  def destroy
    @payment_destination.destroy!

    respond_to do |format|
      format.html { redirect_to payment_destinations_url, notice: "Payment destination was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_destination
      @payment_destination = PaymentDestination.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_destination_params
      params.require(:payment_destination).permit(:payment_destination_name, :institution, :account_number)
    end
end
