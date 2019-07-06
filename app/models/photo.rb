class Photo < ApplicationRecord
  belongs_to :place
  has_many :photos

  mount_uploader :picture, PictureUploader
end
