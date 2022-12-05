class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @showing_title = true
  end
  
  def all_imam
    @users = User.where(imam: "true")
  end

  def job_imam
    @users = User.where(status: "not_working")
  end
  
  def update_status
    @user = User.find(params[:id])
    if params[:status].present? && User::STATUSES.include?(params[:status].to_sym)
      @user.update(status: params[:status])
      redirect_to @user
    else
      redirect_to @user
    end
  end    
end
