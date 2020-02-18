class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:edit, :update, :destroy]

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        flash[:success] = 'Veículo cadastrado com sucesso!'
        format.js { redirect_to vehicles_path }
      else
        format.js { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        flash[:success] = 'Veículo atualizado com sucesso!'
        format.js { redirect_to vehicles_path }
      else
        format.js { render :edit }
      end
    end
  end

  def destroy
    @vehicle.destroy
    flash[:notice] = 'Veículo deletado com sucesso!'
    redirect_to vehicles_path
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:board, :renavam, :model, :year, :user_id)
  end
end