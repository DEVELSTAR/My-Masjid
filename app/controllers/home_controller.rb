class HomeController < ApplicationController
  def index
  end

  def imam
    @imams = User.all
  end

  def all_imam
    @imams = User.all
  end

  def job_imam
    @imams = User.where(status: "not_working")
  end
end
