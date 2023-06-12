class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[show edit update destroy]

  # GET /vehicles or /vehicles.json
  def index
    @vehicles = Vehicle.all
  end

  # GET vehicles/theme
  def theme
    @user = User.find(1) # ! should change this user on add devise
    @vehicles = @user.vehicles # ! join table - has_many_through
  end

  # GET /vehicles/1 or /vehicles/1.json
  def show; end

  # POST vehicles/1/reserve/
  def reserve
    @user = User.find(1) # ! change this to get the current user
    Theme.create(user_id: @user.id, vehicle_id: params[:vehicle_id], book_date: params[:date],
                 name: params[:vehicle_id], city: params[:city])
  end

  # GET /vehicles/reserve_form
  def reserve_form
    return unless params[:id].present?

    @vehicle = Vehicle.find(params[:id])
  end

  # GET /vehicles/delete/candidates
  def candidates
    @vehicles = Vehicle.all
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit; end

  # POST /vehicles or /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to vehicle_url(@vehicle), notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1 or /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to vehicle_url(@vehicle), notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1 or /vehicles/1.json
  def destroy
    @vehicle.destroy

    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vehicle_params
    params.require(:vehicle).permit(:name, :image, :drive_fee, :purchase_fee)
  end
end
