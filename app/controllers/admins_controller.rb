class AdminsController < ApplicationController
	before_filter :authorize!
	
	def dashboard
		@announcements = Announcement.all
	end	

  def new
  end

end
