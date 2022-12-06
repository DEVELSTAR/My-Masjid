class MasjidsController < ApplicationController
    before_action :authenticate_user!, only: [ :update_status, :new]

	def index
		@masjids = Masjid.all
	end

	def show
		@masjid = Masjid.find(params[:id])
	end
	
	def empty_masjid
		@masjids = Masjid.where(status: "Need_a_imam")
    end

	def update_status
		@masjid = Masjid.find(params[:id])
		if params[:status].present? && Masjid::STATUSES.include?(params[:status].to_sym)
		  @masjid.update(status: params[:status])
		  redirect_to @masjid
		else
		  redirect_to @masjid
		end
	end 

	def new
		@masjid = Masjid.new
	end

	def create
		@masjid = Masjid.create(masjid_params)
		respond_to do |format|
		    if @masjid.save
		      format.html { redirect_to @masjid, notice: 'Masjid was successfully created.' }
		    else
		      format.html { render :new }
		    end
		end
	end


	private

	def masjid_params
        params.require(:masjid).permit(:name, :city, :village, :user_id, :imam, :mutawalli)
	end
end