class PieceTag < ApplicationRecord
  belongs_to :tag
  belongs_to :piece
end
