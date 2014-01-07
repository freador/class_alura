class Comment < ActiveRecord::Base
	belongs_to :job
	validates_presence_of :body, :name
end
