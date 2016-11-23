class Contact < ApplicationRecord
  validates :email, allow_blank: true , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :web, :url => {:allow_blank => true}
  
  def to_s
    "#{phone_1} | #{phone_2} | #{email} | #{web}"
  end
end
