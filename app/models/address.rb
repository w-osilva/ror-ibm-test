class Address < ApplicationRecord
  belongs_to :city
  belongs_to :state

  validates :address, :presence => true
  validates :county, :presence => true
  validates :zip, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
end
