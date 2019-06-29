vagrant ssclass Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 3, too_short: "%{count} characters is the maximum allowed" }
  validates :address, description:, presence: true
end