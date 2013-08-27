class Family < ActiveRecord::Base
	has_many :children
	belongs_to :father, class_name: 'Parent'
	belongs_to :mother, class_name: 'Parent'
end
