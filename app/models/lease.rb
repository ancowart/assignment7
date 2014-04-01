class Lease < ActiveRecord::Base
  belongs_to :unit, :foreign_key => "id"
  has_many :renters, :class_name => 'User'
end
