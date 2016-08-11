class Post < ActiveRecord::Base
	belongs_to :subcategory
	belongs_to :user
	is_impressionable
end
