class Company < ApplicationRecord
  belongs_to :user
  has_many :product
  has_many :Event
end
