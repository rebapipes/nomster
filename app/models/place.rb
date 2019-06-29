vagrant ssclass Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, too_short: "%{count} characters is the maximum allowed" }
  validates :address, presence: true
  validates :description, presence: true
end