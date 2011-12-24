class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :author
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
