class Tag < ApplicationRecord
  has_many :piece_tags
  has_many :pieces, through: :piece_tags
  validates :name, presence: true, uniqueness: true
end
