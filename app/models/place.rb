class Place < ApplicationRecord

  belongs_to :user
    has_many :comments
    has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3, 
    too_short: "%{count} characters is the minimum allowed" }
  validates :address, :description, presence: true
end
