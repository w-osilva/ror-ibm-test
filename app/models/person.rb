class Person < ApplicationRecord
  belongs_to :address
  belongs_to :company
  belongs_to :contact

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :address, :presence => true
  validates :company, :presence => true
  validates :contact, :presence => true
  
  def to_s
    "#{first_name} #{last_name}"
  end
  
end
