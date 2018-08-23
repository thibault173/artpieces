class Piece < ApplicationRecord
  has_many :piece_tags, dependent: :destroy
  has_many :tags, through: :piece_tags
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :user, presence: true

end
