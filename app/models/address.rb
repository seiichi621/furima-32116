class Address < ApplicationRecord
  belongs_to :order
  has_one :user
  
end
