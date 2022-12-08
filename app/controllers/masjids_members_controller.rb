class MasjidsMembersController < ApplicationController
    before_action :set_masjid

	def index
		@masjids_member = @masjid.masjids_members
        @bethhs = Bethh.all
	end

	def new
		@masjids_member = @masjid.masjids_members.build
	end

	def create
	    @masjid = @masjid.masjids_members.build(masjids_member_params)
		respond_to do |format|
		    if @masjid.save
		      format.html { redirect_to root_path, notice: 'Masjid was successfully created.' }
		    else
		      format.html { render :new }
		    end
		end
	end

	private
    
	def set_masjid
	    @masjid = Masjid.find(params[:masjid_id])
	end

    def masjids_member_params
      params.require(:masjids_member).permit(:name, :father_name, :masjid_id)
    end
end