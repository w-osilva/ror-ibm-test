class City < ApplicationRecord
  belongs_to :state

  validates :name, :presence => true
  validates :state, :presence => true
  
  def to_s
    name
  end
end
