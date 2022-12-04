class MasjidsController < ApplicationController

	def index
		@masjids = Masjid.all
	end

	def show
		@masjid = Masjid.find(params[:id])
	end

	def new
		@masjid = Masjid.new
	end

	def create
		@masjid = Masjid.create(masjid_params)
		redirect_to masjids_path
	end


	private

	def masjid_params
        params.require(:masjid).permit(:name, :city, :village, :user_id)
	end
end