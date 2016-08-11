class User < ActiveRecord::Base
	has_many :posts
	has_many :skills
	
	def self.omniauth(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.first_name = auth.info.first_name
	    user.last_name = auth.info.last_name
	    user.image = auth.info.image
	    user.gender = auth.info.gender 
	    user.locale = auth.info.locale
	    user.oauth_token = auth.credentials.token
	    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	    user.save!
	  end
	end
end