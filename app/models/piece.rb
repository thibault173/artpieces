class Piece < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :user, presence: true
end
