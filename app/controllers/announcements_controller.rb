class AnnouncementsController < ApplicationController
	before_filter :authorize!, :except => [:show, :index]
	before_filter :get_announcement, :only => [:show, :edit, :update, :destroy]

  def index
		@announcements = Announcement.offset(5).order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def new
		@announcement = Announcement.new
  end

	def create
    @announcement = Announcement.new(params[:announcement].merge( :admin_id => current_user.id ))
      if @announcement.save
				redirect_to @announcement, notice: 'Post was successfully created.'
      else
				render action: "new"
      end
  end

	def update
      if @announcement.update_attributes(params[:announcements])
				redirect_to @annoucement, notice: 'Post was successfully updated.'
      else
				render action: "edit"
      end
  end

  def destroy
    @announcement.destroy
    	redirect_to admins_dashboard_path
  end

	private
		def get_announcement
			@announcement = Announcement.find(params[:id])		# TODO: change to title eventually
		end
end
