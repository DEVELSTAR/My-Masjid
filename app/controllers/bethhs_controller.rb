class BethhsController < ApplicationController
	def index
		@masjids_member = MasjidsMember.all
        @bethhs = Bethh.all
	end
end