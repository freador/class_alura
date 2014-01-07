class Job < ActiveRecord::Base
	has_many :comments
	belongs_to :company
	validates :title, :description,  presence:true
end
