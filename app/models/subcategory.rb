class Subcategory < ActiveRecord::Base
	belongs_to :category
	has_many :posts

	searchkick text_start: ['rate']
end
