class PagesController < ApplicationController
  def index
		@announcements = Announcement.limit(5).order("created_at DESC")
  end

end
