class Piece < ApplicationRecord
  belongs_to :user


   mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :user, presence: true

end
