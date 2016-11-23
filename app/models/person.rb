class Person < ApplicationRecord
  belongs_to :address
  belongs_to :company
  belongs_to :contact
end
