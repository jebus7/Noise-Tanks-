class RemoveAuthorFromAnnouncements < ActiveRecord::Migration
  def up
    remove_column :announcements, :author
  end

  def down
    add_column :announcements, :author, :string
  end
end
