class State < ApplicationRecord
  has_many :cities
  
  validates :abbreviation, :presence => true
end
