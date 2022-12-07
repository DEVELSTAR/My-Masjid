class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update_status, :edit, :update, :destroy]

  def show
  end

  def index
    @users = User.all
    @showing_title = true
  end
  
  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to current_user
  end

  def all_imam
    @users = User.where(imam: "true")
  end

  def job_imam
    @users = User.where(status: "not_working")
  end
  
  def update_status
    if params[:status].present? && User::STATUSES.include?(params[:status].to_sym)
      @user.update(status: params[:status])
      redirect_to @user
    else
      redirect_to @user
    end
  end 

  def destroy
    @user.destroy
    redirect_to root_path
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :phone, :city, :village, :imam, :is_admin, :mutawalli, :sub_admin)
  end   
end
