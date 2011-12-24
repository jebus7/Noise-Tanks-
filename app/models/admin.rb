class Admin < ActiveRecord::Base
	#attr_accessor :password

	has_many :announcements

	def self.authenticate(username, password)
    admin = find_by_username(username)
    if admin && admin.password_hash ==  BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end
	
end
