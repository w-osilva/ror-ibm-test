class State < ApplicationRecord
  has_many :cities
  
  validates :abbreviation, :presence => true
  
  def to_s
    "#{name} #{abbreviation}"
  end
end
