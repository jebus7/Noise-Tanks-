class AddAdminIdToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :admin_id, :integer
  end
end
