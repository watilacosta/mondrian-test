class TransfersController < ApplicationController
  before_action :set_transfer, only: []

  def index
    @transfers = Transfer.all.order(created_at: :asc)
  end

  def new
    @transfer = Transfer.new
    @vehicle  = Vehicle.find(params[:veiculo])
  end

  def create
    @vehicle  = Vehicle.find_by(board: params[:transfer][:vehicle])
    @transfer = Transfer.new(vehicle_id: @vehicle.id, 
                             seller_id: params[:transfer][:seller_id],
                             buyer_id: params[:transfer][:buyer_id])

    @vehicle.transferir_propriedade(User.find(params[:transfer][:buyer_id]))

    respond_to do |format|
      if @transfer.save
        flash[:success] = 'Transferência realizada com sucesso!'
        format.js { redirect_to vehicles_path }
      else
        format.js { render :new }
      end
    end
  end

  private

  def transfer_params
    params.require(:transfer).permit(:seller_id, :buyer_id, :vehicle)
  end
end
