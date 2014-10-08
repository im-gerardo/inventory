class Product < ActiveRecord::Base
	belongs_to :category
	has_many :stocks
	has_and_belongs_to_many :characteristics
	has_many :orders
end
