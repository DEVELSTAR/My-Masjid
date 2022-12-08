class BethhsController < ApplicationController
	def index
		@masjids_member = MasjidsMember.all
        @bethhs = Bethh.all
	end
end

# class BethhsController < ApplicationController
#     before_action :set_masjid

# 	def index
# 		@masjids_member = MasjidsMember.all
#         @bethhs = Bethh.all
# 	end

# 	def new
# 		@bethh = Bethh.new
# 	end

# 	def create
# 		@bethh = Bethh.create(bethh_params)
# 		respond_to do |format|
# 		    if @masjid.save
# 		      format.html { redirect_to root_path, notice: 'Masjid was successfully created.' }
# 		    else
# 		      format.html { render :new }
# 		    end
# 		end
# 	end

# 	def set_masjid
# 	    @masjid = Masjid.find(params[:masjid_id])
# 	end

#     def bethh_params
#       params.require(:masjids_member).permit(:name, :father_name, :masjid_id, :munji, :gehun)
#     end
# end