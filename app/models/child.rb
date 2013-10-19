class Child < ActiveRecord::Base
  belongs_to :family
  validates_inclusion_of :sex, in: %w( m f )
  validates_presence_of :dob, :first_name, :last_name

  scope :adopted, -> { where adopted: true }

  def full_name; "#{last_name} #{first_name} #{middle_name}" end
  def family_name
    self.family.name if self.family
  end

  def age
    unless self.dob.nil?
      now = Time.now.utc.to_date
      now.year - self.dob.year - (self.dob.to_date.change(:year => now.year) > now ? 1 : 0)
      end
  end
end
