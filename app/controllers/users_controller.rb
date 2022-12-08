class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update_status, :edit, :update, :destroy]

  def show
    @masjids = Masjid.all
  end

  def index
    @users = User.all.reverse
    @showing_title = true
  end
  
  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def all_imam
    @users = User.where(imam: "true").reverse
  end

  def job_imam
    @users = User.where(status: "not_working").reverse
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
    params.require(:user).permit(:name, :email, :phone, :city, :village, :imam, :is_admin, :mutawalli, :sub_admin, :qualifications, :experience)
  end   
end
