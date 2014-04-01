class Lease < ActiveRecord::Base
  belongs_to :unit, :foreign_key => "unit_id"
  has_many :renters, :class_name => "User"
  
  validates :rent, :presence => true, :numericality => {:only_integer => true}
end
