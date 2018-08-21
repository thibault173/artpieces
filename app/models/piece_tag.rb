class PieceTag < ApplicationRecord
  belongs_to :tag
  belongs_to :piece
  validates :piece, uniqueness: {scope: :tag}
  validates :piece, :tag, presence: true
end
