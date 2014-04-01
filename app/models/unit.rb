class Unit < ActiveRecord::Base
  belongs_to :property, :foreign_key => "property_id"
  has_many :leases
  
  validates :name, :presence => true 
  validates :square_feet, :presence => true, :numericality => {:only_integer => true}

  def full_title
    return "#{property.name}: #{name}"
  end
  
end
