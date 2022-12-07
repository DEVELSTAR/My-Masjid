class MasjidsController < ApplicationController
    before_action :authenticate_user!, only: [ :update_status, :new]
    before_action :set_masjid, only: [:show, :update_status, :edit, :update, :destroy]

	def index
		@masjids = Masjid.all
	end

	def show
	end
	
	def empty_masjid
		@masjids = Masjid.where(status: "Need_a_imam")
    end

	def update_status
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

	def edit
	end

	def update
	    @masjid.update(masjid_params)
	    redirect_to @masjid
	end

	def destroy
	    @masjid.destroy
	    redirect_to root_path
	end

	private

	def set_masjid
	    @masjid = Masjid.find(params[:id])
	end

	def masjid_params
        params.require(:masjid).permit(:name, :city, :village, :user_id, :imam, :mutawalli, :sub_admin)
	end

end