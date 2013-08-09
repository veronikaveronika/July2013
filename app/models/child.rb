class Child < ActiveRecord::Base
  belongs_to :family
  validates_inclusion_of :sex, in: %w( m f )
end
