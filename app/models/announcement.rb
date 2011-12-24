class Announcement < ActiveRecord::Base
	belongs_to :admin

  	validates :title, :presence => true,
						:length => { :minimum => 5 }
end
