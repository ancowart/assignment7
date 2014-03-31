class Payment < ActiveRecord::Base
  
  attr_accessor :card_number
  
  belongs_to :user
  
end
