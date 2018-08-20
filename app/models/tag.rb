class Tag < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :pieces, through: :piece_tags

end
