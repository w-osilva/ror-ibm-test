class Contact < ApplicationRecord
  validates :email, allow_blank: true , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :web, :url => {:allow_blank => true}
end
