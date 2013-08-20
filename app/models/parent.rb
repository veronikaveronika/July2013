class Parent < ActiveRecord::Base
  belongs_to :family
  validates_inclusion_of :sex, in: %w( m f )

  def full_name; "#{last_name} #{first_name} #{middle_name}" end
end
