class Family < ActiveRecord::Base
	has_many :children
	belongs_to :father, class_name: 'Parent'
	belongs_to :mother, class_name: 'Parent'

	def father_full_name
		self.father.full_name if self.father
	end

	def mother_full_name
		self.mother.full_name if self.mother
	end
end
