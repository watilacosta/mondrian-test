class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        flash[:success] = 'Pessoa cadastrada com sucesso!'
        format.js { redirect_to users_path }
      else
        format.js { render :new }
      end
    end
  end

  def edit 
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        flash[:success] = 'Pessoa atualizada com sucesso!'
        format.js { redirect_to users_path }
      else
        format.js { render :edit }
      end
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = 'Pessoa deletada com sucesso!'
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :cpf_cnpj, :email, :password, :password_confirmation)
  end
end
