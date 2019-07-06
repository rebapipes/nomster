class Photo < ApplicationRecord
  belongs_to :place
  has_many :photos
end
